class Instructor::ProgramsController < ApplicationController
	before_action :authenticate_user!
	
	

	private



	def program_params
		params.require(:program).permit(:exercise, :sets, :reps, :intensity, :prescribed_load, :actual_load, :tempo, :rest, :notes, :title_id)
	end
end
