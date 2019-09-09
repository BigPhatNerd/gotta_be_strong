class Instructor::ProgramNamesController < ApplicationController
before_action :authenticate_user! 
before_action :set_program_name, only: [:edit, :update, :destroy]

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
		

	end
	def update
		
		@program_name.update_attributes(program_name_params)
		redirect_to instructor_program_names_path

	end

	def destroy
		
		@program_name.destroy
		redirect_to instructor_program_names_path

	end

	private

	def set_program_name
		@program_name ||= ProgramName.find(params[:id])

	end

def program_name_params
	params.require(:program_name).permit(:program_name)
end

end
