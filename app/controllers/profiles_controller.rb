class ProfilesController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@profiles = Profile.all
  end

  def user_birthday
  	@users = User.all
  end
  def employee_search
  	@user_search = User.search(params[:search])
  end
end
