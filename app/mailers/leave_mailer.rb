class LeaveMailer < ActionMailer::Base
  default from: "yogi.b3195@gmail.com"
  def send_leave_mail(leave)
  	@user = User.find(leave.user_id)
  	@leave ||= leave
  	mail(:to => "yogendra@ignisitsolutions.com", :subject => "Leave Apply")
  end
end
