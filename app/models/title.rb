class Title < ApplicationRecord
	belongs_to :week
	has_many :programs, :dependent => :destroy

	

end
