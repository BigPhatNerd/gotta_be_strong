class TitlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_week, only: [:show]
	def index
		
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
	
@title =  Title.find(params[:id])
@title.title_completed = true
@title.save
redirect_back(fallback_location: root_path)
end

def incomplete
@title = Title.find(params[:id])
@title.title_completed = false
@title.save
redirect_back(fallback_location: root_path)
	end

	private

	def set_week
		@week ||= Week.find(params[:week_id])
	end

	def title_params
		params.require(:title).permit(:title, :title_completed)
	end

	
end
