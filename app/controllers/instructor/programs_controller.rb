class Instructor::ProgramsController < ApplicationController


def new
	@program = Program.new
end

def create
@program = current_user.programs.create(program_params)
if @course.valid?
redirect_to instructor_program_path(@program)
else
	render :new, status: :unprocessable_entity
end
	end

	def show
@program = Program.find(params[:id])
	end


	private

	def program_params
		params.require(:program).permit(:title, :exercise, :sets, :reps, :inensity, :prescribed_load, :actual_load, :tempo, :rest)

	end
end
