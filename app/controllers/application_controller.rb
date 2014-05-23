class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!, unless: :admin_controller?

  #Cancan Exception
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = exception.message
    redirect_to root_url
  end

  #After signin path
  def after_sign_in_path(user)
  	redirect_to_proper_path(user)
  end

  private
  def redirect_to_proper_path(user)
  	case user.role.downcase
	  when 'superadmin', 'admin'
	  	admin_root_path
	  else
	  	root_path
	  end
  end
  def admin_controller?
  	self.kind_of?(ActiveAdmin::BaseController) || self.kind_of?(ActiveAdmin::Devise::SessionsController)
  end
end
