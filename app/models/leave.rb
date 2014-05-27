class Leave < ActiveRecord::Base
	after_create :send_leave_mail_to_hr
  attr_accessible :date_from, :date_to, :description, :leave_status, :user_id, :leave_type, :request_approval
  belongs_to :user
  LEAVE_TYPE = %w(1/4-day half-day full-day)
  # Sending Mail
  def send_leave_mail_to_hr
    LeaveMailer.send_leave_mail(self).deliver
  end
end