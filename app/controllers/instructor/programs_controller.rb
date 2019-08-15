class Instructor::ProgramsController < ApplicationController
before_action :authenticate_user!
validates :title, presence: true
def new
	@program = Program.new
end

def create
@program = current_user.programs.create(program_params)
redirect_to instructor_program_path(@program)
	end

	def show
@program = Program.find(params[:id])
	end


	private

	def program_params
		params.require(:program).permit(:title, :exercise, :sets, :reps, :inensity, :prescribed_load, :actual_load, :tempo, :rest)

	end
end
