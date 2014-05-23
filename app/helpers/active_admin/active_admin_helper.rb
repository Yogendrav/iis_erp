module ActiveAdmin::ActiveAdminHelper
	def super_admin?
		debugger
    current_admin_user.role == "superadmin"
  end
  def admin?
  	debugger
  	current_admin_user.role == "admin"
  end
end