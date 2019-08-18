class TitlesController < ApplicationController
before_action :authenticate_user!
	def index
		@titles = Title.all
	end

	def show
		
		@title = Title.find(params[:id])
		@user = User.all
		@program = Program.find(params[:id])
		@max_weight = MaxWeight.last
		@max_bench = @max_weight.max_bench
		@max_squat = @max_weight.max_squat
		@max_deadlift = @max_weight.max_deadlift
		
	end
	
end
