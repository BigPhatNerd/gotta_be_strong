class Instructor::ProgramsController < ApplicationController


	def new
		@title = Title.find(params[:title_id])
		@program = Program.new
	end
	def index

		@title = Title.find(params[:title_id])
		@programs = Program.all

	end


def create
	@title = Title.find(params[:title_id])
	@program = @title.programs.create(program_params)
	redirect_to instructor_title_path(@title)
end



def show
	@program = Program.find(params[:id])
end

def edit
	@title = Title.find(params[:title_id])
	@program = Program.find(params[:id])
	logger.debug @title.program.inspect
end

def update
	@title = Title.find(params[:title_id])

	@program = @title.programs.update_attributes(program_params)
	if @program.valid?
		redirect_to instructor_title_path
	else
		render :edit, status: :unprocessable_entity
	end
end


private

def program_params
	params.require(:program).permit(:exercise, :sets, :reps, :intensity, :prescribed_load, :actual_load, :tempo, :rest, :notes)
end
end
