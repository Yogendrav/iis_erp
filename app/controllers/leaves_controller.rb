class LeavesController < ApplicationController
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
		@leave = Leave.new(params[:leave])
		if @leave.save
			redirect_to root_path
		else
			render 'new'
		end
	end
	def update
		@leave = Leave.find(params[:id])
		if @leave.update_attributes(params[:leave])
			redirect_to root_path
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
end
