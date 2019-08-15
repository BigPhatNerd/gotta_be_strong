class Instructor::ProgramsController < ApplicationController


def new
	@title = Title.find(params[:title_id])
	@program = Program.new
end

def create
	@title = Title.find(params[:title_id])
	@program = @title.programs.create(program_params)
	redirect_to instructor_title_path(@title)
end

private

def program_params
params.require(:program).permit(:exercise, :sets, :reps, :intensity, :prescribed_load, :actual_load, :tempo, :rest, :notes)
end
end
