class Instructor::ProgramNamesController < ApplicationController
before_action :authenticate_user! 

def index
	@program_names = ProgramName.all

end
def new
	@program_name = ProgramName.new

end

def create
	@program_name = current_user.program_names.create(program_name_params)
redirect_to instructor_program_names_path(@program_name)
	end

	def edit
		@program_name = ProgramName.find(params[:id])

	end

	private

def program_name_params
	params.require(:program_name).permit(:program_name)
end

end
