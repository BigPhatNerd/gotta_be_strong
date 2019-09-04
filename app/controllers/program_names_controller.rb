class ProgramNamesController < ApplicationController
def index
	@program_names = ProgramName.all
	

end
end
