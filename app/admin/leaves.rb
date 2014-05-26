ActiveAdmin.register Leave do
  menu :priority => 4
	actions :index, :approve, :decline
  index do
  	column "Emp Name" do |u|
  		User.find_by_id(u.user_id).emp_name
  	end
  	column :date_from
  	column :date_to
  	column :description
  	column "Department" do |d|
  		User.find_by_id(d.user_id).department
  	end
  	column "Designation" do |d|
  		User.find_by_id(d.user_id).designation
  	end
  	column "leave_status" do |leave|
  		if leave.leave_status.nil?
  			ul :class => "approve_or_decline" do
  				li link_to "Approve", approve_admin_leafe_path(leave, :approved => 'true'), :remote => true
          li link_to "Decline", decline_admin_leafe_path(leave, :approved => 'false'), :remote => true
  	    end
  	  else
  	  	approved_or_declined = leave.leave_status == true ? 'Approved' : 'Declined'
  	  	ul approved_or_declined
  	  end
  	end
  	default_actions
  end
  member_action :approve, :method => :get do
    @l = Leave.find(params[:id])
    @approved_or_declined = params[:approved] == 'true' ? "Approved" : "Declined"
    @l.update_attributes(:leave_status => 1)
  end

  member_action :decline, :method => :get do
    @l = Leave.find(params[:id])
    @approved_or_declined = params[:approved] == 'true' ? "Approved" : "Declined"
    @l.update_attributes(:leave_status => 0)
  end
end
