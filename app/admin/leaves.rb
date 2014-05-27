ActiveAdmin.register Leave do
  menu :priority => 4
	actions :index, :approve, :decline
  index do
  	column "Emp Name" do |u|
  		User.find_by_id(u.user_id).emp_name
  	end
    column :leave_type
  	column :date_from
  	column :date_to
  	column :description
  	column "Department" do |d|
  		User.find_by_id(d.user_id).department
  	end
  	column "Designation" do |d|
  		User.find_by_id(d.user_id).designation
  	end
    if current_admin_user.role == 'admin'
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
    end
    if current_admin_user.role == 'superadmin'
      column "request_approval" do |leave|
        # debugger
        if leave.leave_status.present?
          if leave.request_approval.nil?
            ul :class => "request_approved_or_declined" do
              li link_to "Request Approve", request_approval_admin_leafe_path(leave, :request_approved => 'true'), :remote => true
              li link_to "Request Decline", request_decline_admin_leafe_path(leave, :request_approval => 'false'), :remote => true
            end
          else
            request_approved_or_declined = leave.request_approval == true ? 'Request Approved' : 'Request Declined'
            ul request_approved_or_declined
          end
        end
      end
    end
  	default_actions
  end
  member_action :approve, :method => :get do
    # debugger
    @l = Leave.find(params[:id])
    @approved_or_declined = params[:approved] == 'true' ? "Approved" : "Declined"
    redirect_to request_approval_admin_leafe_path
    @l.update_attributes(:leave_status => 1)
  end

  member_action :decline, :method => :get do
    @l = Leave.find(params[:id])
    @approved_or_declined = params[:approved] == 'true' ? "Approved" : "Declined"
    @l.update_attributes(:leave_status => 0)
  end

  member_action :request_approval, :method => :get do
    # debugger
    @l = Leave.find(params[:id])
    @request_approved_or_declined = params[:request_approved] == 'true' ? "Request Approved" : "Request Declined"
    @l.update_attributes(:request_approval => 1)
  end
  member_action :request_decline, :method => :get do
    @l = Leave.find(params[:id])
    @request_approved_or_declined = params[:request_approved] == 'true' ? "Request Approved" : "Request Declined"
    @l.update_attributes(:leave_status => 0)
  end
end
