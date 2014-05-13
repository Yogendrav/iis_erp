class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :display_user_attributes
  def display_user_attributes
  	@users = User.all
  end
end
