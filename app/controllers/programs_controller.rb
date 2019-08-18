class ProgramsController < ApplicationController
def index
		@titles = Title.all
		@programs = Program.all
	end

	def show
		@title = Title.find(params[:title_id])
		@user = User.all
		@program = Program.find(params[:id])
		@max_weight = MaxWeight.all
		@max_bench = MaxWeight.max_bench
		@max_squat = MaxWeight.max_squat
		@max_deadlift = MaxWeight.max_deadlift
		
	end

end
