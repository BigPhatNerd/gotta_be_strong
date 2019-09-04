class Program < ApplicationRecord
	belongs_to :title
	has_many :weeks
	
end
