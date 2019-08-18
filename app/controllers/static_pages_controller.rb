class StaticPagesController < ApplicationController
before_action :authenticate_user!
def index
	@max = MaxWeight.count
	

end



def edit
		@max_weight = MaxWeight.find(params[:id])
		if @max_weight.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

	end
end
