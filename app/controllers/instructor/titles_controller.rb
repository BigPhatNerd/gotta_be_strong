class Instructor::TitlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	

	

	def new
		@week = Week.find(params[:week_id])
		@title = Title.new

	end

	def index
		@titles = Title.all
		@weeks = Week.all
		
	end

	def create
		@week = Week.find(params[:week_id])
		@title = @week.titles.create(title_params)
		if @title.valid?
			redirect_to instructor_week_titles_path(@title)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
		@title = Title.find(params[:id])
		
		

	end

	def edit
		@title = Title.find(params[:id])
=begin		
		if @title.user_id != current_user
			return render plain: 'Not Allowed. You must be the creator of the program to edit', status: :forbidden
			
		end
=end
	end

	

	def update
		@title = Title.find(params[:id])
		

		@title.update_attributes(title_params)
		if @title.valid?
			redirect_to instructor_title_path
		else
			render :edit, status: :unprocessable_entity
		end

	end

	def destroy
		@title = Title.find(params[:id])
		
		@title.destroy
		redirect_to instructor_titles_path

	end




	private

	def title_params
		params.require(:title).permit(:title)
	end
end
