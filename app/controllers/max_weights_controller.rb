class MaxWeightsController < ApplicationController
	before_action :authenticate_user!
	def new
		@max_weight = MaxWeight.new

	end

	def create
		@max_weight = current_user.max_weights.create(max_weight_params)
		redirect_to titles_path
	end

	def index
		@max_weights = MaxWeight.all

	end

	def show
		@max_weight = current_user.max_weights.params([:id])
	end

	def edit
		@max_weight = MaxWeight.find(params[:id])
		if @max_weight.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

	end

	def update
@max_weight = MaxWeight.find(params[:id])
	end

	private

	def max_weight_params
		params.require(:max_weight).permit(:max_bench, :max_squat, :max_deadlift)
	end

end
