class HolidaysController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@holidays = Holiday.all
  end
end
