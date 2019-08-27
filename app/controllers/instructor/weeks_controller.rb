class Instructor::WeeksController < ApplicationController
	before_action :authenticate_user!
	def new
		@week = Week.new

	end

	def create
		@week = current_user.weeks.create(week_params)
		redirect_to instructor_week_path(@week)

	end

	def show
		@week = Week.find(params[:id])
	end

	private
	def week_params
		params.require(:week).permit(:week_name)

	end



end
