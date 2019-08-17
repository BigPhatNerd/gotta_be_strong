class Instructor::TitlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
		@title = Title.new

	end
	def index
		@titles = Title.all
	end

	def create
		@title = current_user.titles.create(title_params)
		if @title.valid?
			redirect_to instructor_title_path(@title)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
		@title = Title.find(params[:id])
	end

	def edit
		@title = Title.find(params[:id])
		if @title.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
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
		if @title.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@title.destroy
		redirect_to instructor_titles_path

	end




	private

	def title_params
		params.require(:title).permit(:title)
	end
end
