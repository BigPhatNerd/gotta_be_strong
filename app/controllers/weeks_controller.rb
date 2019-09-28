class WeeksController < ApplicationController
def index
	@program_name = ProgramName.find(params[:program_name_id])
	@program_names = ProgramName.all
	@weeks = Week.all

end

def complete
@week = Week.find(params[:id])
@week.week_completed = true
@week.save
redirect_back(fallback_location: root_path)

	end

	def incomplete
		@week = Week.find(params[:id])
		@week.week_completed = false
		@week.save
		redirect_back(fallback_location: root_path)

	end
end
