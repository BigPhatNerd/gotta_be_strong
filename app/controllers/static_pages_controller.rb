class StaticPagesController < ApplicationController
before_action :authenticate_user!
def index
	@max = MaxWeight.count
	
end

end
