class TitlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_week, only: [:show, :index]
	def index
		
		@titles = Title.all
		@weeks = Week.all
		
	end

	def show

		
		@title = Title.find(params[:id])
		@user = User.all
		
		@max_weight = current_user.max_weights.last

		@max_bench = @max_weight.max_bench
		@max_squat = @max_weight.max_squat
		@max_deadlift = @max_weight.max_deadlift
		@number = 600
		
		
	end

	private

	def set_week
		@week ||= Week.find(params[:week_id])
	end

	
end
