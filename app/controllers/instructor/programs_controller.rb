class Instructor::ProgramsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_week, only: [:create, :update, :destroy]
	before_action :set_title, only: [:index, :create, :update, :destroy]
	
	def new
		@program = Program.new
	end

	def index
		@titles = Title.all 
		@programs = Program.all
	end

	def create
		
		@program = @title.programs.create(program_params)
		redirect_to instructor_week_title_path(@week,@title)
	end
	def edit
		@program = Program.find(params[:id])
	end

	def update
		@program = Program.find(params[:id])
		@program.update_attributes(program_params)
		redirect_to instructor_week_title_path(@week,@title)

	end
	def destroy

		@program = Program.find(params[:id])
		@program.destroy
		redirect_to instructor_week_title_path(@week, @title)

	end

	private
	def set_week
@week = Week.find(params[:week_id])
	end
def set_title
@title = Title.find(params[:title_id])
end 


	def program_params
		params.require(:program).permit(:exercise, :sets, :reps, :intensity, :prescribed_load, :actual_load, :tempo, :rest, :notes, :title_id)
	end
end
