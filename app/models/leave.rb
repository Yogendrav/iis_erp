class Leave < ActiveRecord::Base
	after_create :send_leave_mail_to_hr
  attr_accessible :date_from, :date_to, :description, :leave_status, :user_id
  belongs_to :user, :dependent => :destroy

  # Sending Mail
  def send_leave_mail_to_hr
    LeaveMailer.send_leave_mail(self).deliver
  end
end