class Instructor::WeeksController < ApplicationController
	before_action :authenticate_user!
	def new
		@program_name = ProgramName.find(params[:program_name_id])
		@week = Week.new

	end

	def create
		@program_name = ProgramName.find(params[:program_name_id])
		@program_name.weeks.create(week_params)
		redirect_to instructor_program_name_weeks_path(@program_name)

	end
	def index
		@program_names = ProgramName.all
		@program_name = ProgramName.find(params[:program_name_id])
		@weeks = @program_name.weeks.all

	end

	def show
		@week = Week.find(params[:id])
	end

	def edit
		@program_names = ProgramName.all
		@program_name = ProgramName.find(params[:program_name_id])
		@week = Week.find(params[:id])
		@weeks = Week.all
	end

	def update
		@week = Week.find(params[:id])

		@week.update_attributes(week_params)
		if @week.valid?
			redirect_to instructor_program_name_weeks_path
		else
			render :edit, status: :unprocessable_entity
		end

	end
	def destroy
		@week = Week.find(params[:id])
		@week.destroy
		redirect_to instructor_program_name_weeks_path

	end

	private
	def week_params
		params.require(:week).permit(:week_name)

	end



end
