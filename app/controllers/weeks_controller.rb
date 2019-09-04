class WeeksController < ApplicationController
def index
	@program_names = ProgramName.all
	@weeks = Week.all

end
end
