class Title < ApplicationRecord
	belongs_to :week
	has_many :programs

	validates :title, presence: true

end
