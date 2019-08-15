class Instructor::TitlesController < ApplicationController
before_action :authenticate_user!

def new
@title = Title.new

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




	private

	def title_params
params.require(:title).permit(:title)
	end
end
