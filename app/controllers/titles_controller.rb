class TitlesController < ApplicationController
before_action :authenticate_user!
	def index
		@titles = Title.all
	end

	def show
		@title = Title.find(params[:id])
		@user = User.all
		@max_weight = MaxWeight.all
	end
end
