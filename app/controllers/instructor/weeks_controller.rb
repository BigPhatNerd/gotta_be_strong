class Instructor::WeeksController < ApplicationController
	before_action :authenticate_user!
	before_action :set_program_name, only: [:new, :index, :create, :edit]
	before_action :set_week, only: [:show, :edit, :update, :destroy]
	def new	
		@week = Week.new
	end

	def create	
		@program_name.weeks.create(week_params)
		redirect_to instructor_program_name_weeks_path(@program_name)
	end

	def index
		@program_names = ProgramName.all
		@weeks = Week.all
	end

	def show
		set_week
	end

	def edit
		@program_names = ProgramName.all
		@weeks = Week.all
	end

	def update
		@week.update_attributes(week_params)
		if @week.valid?
			redirect_to instructor_program_name_weeks_path
		else
			render :edit, status: :unprocessable_entity
		end

	end
	def destroy
		@week.destroy
		redirect_to instructor_program_name_weeks_path
	end

	private

	def set_program_name
		@program_name ||= ProgramName.find(params[:program_name_id])
	end
	def set_week
		@week  ||= Week.find(params[:id])

	end
	def week_params
		params.require(:week).permit(:week_name)

	end
end
