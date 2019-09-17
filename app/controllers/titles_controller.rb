class TitlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_week, only: [:show]
	def index
		@title_incomplete = Title.title_incomplete
		@title_completed = Title.title_completed
		@titles = Title.all
		@weeks = Week.all	
		@week = Week.find(params[:week_id])	
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

def complete
	
Title.where(id: params[:title_id]).update_all(title_completed: true)
redirect_to weeks_path
end

	private

	def set_week
		@week ||= Week.find(params[:week_id])
	end

	def title_params
		params.require(:title).permit(:title, :title_completed)
	end

	
end
