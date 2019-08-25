class Instructor::ProgramsController < ApplicationController
	before_action :authenticate_user!
	
	def new
@program = Program.new
	end

	def create
		@title = Title.find(params[:title_id])
		@program = @title.programs.create(program_params)
		redirect_to instructor_title_path(@title)

	end
	def edit
		@program = Program.find(params[:id])

	end

	def update
		@program = Program.find(params[:id])
		@program.update_attributes(program_params)
		redirect_to instructor_titles_path

	end
	def destroy
		@program = Program.find(params[:id])
		@program.destroy
		redirect_to instructor_titles_path

	end

	private



	def program_params
		params.require(:program).permit(:exercise, :sets, :reps, :intensity, :prescribed_load, :actual_load, :tempo, :rest, :notes, :title_id)
	end
end
