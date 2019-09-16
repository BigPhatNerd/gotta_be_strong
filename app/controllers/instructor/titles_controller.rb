class Instructor::TitlesController < ApplicationController
	before_action :authenticate_user!
	
	before_action :set_week, only: [:new, :show, :edit, :index, :create, :update, :destroy]
	before_action :set_title, only: [:show, :edit, :update, :destroy]

	

	def new
		@title = Title.new
	end

	def index
		@weeks = Week.all
		@titles = Title.all
		
	end

	def create
		@title = @week.titles.create(title_params)
		if @title.valid?
			redirect_to instructor_week_title_path(@week,@title)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show

		@titles = Title.all
		@programs = Program.all
	end

	def edit
		set_title
	end

	def update
		@title.update_attributes(title_params)
		if @title.valid?
			redirect_to instructor_week_title_path(@week, @title)
		else
			render :edit, status: :unprocessable_entity
		end

	end

	def destroy	
		@title.destroy
		redirect_to instructor_week_titles_path(@week)

	end

	private

	def set_week
		@week ||= Week.find(params[:week_id])
	end
	def set_title
		@title ||= Title.find(params[:id])
	end

	def title_params
		params.require(:title).permit(:title, :title_completed)
	end
end
