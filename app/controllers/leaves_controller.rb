class LeavesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@leaves = Leave.all
	end
	def new
		@leave = Leave.new
	end
	def show
		@leave = Leave.find(params[:id])
	end
	def edit
		@leave = Leave.find(params[:id])
	end
	def create
		@leave = current_user.leave.build(params[:leave])
		if @leave.save
			redirect_to leave_status_leaves_path
		else
			render 'new'
		end
	end
	def update
		@leave = Leave.find(params[:id])
		if @leave.update_attributes(params[:leave])
			redirect_to leave_status_leaves_path
		else
			render 'index'
		end
	end
	def destroy
		@leave = Leave.find(params[:id])
		if @leave.destroy
			redirect_to root_path
		else
			render 'index'
		end
	end
	def leave_status
		
	end
end
