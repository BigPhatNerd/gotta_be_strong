class Title < ApplicationRecord
	belongs_to :user
	has_many :programs

	validates :title, presence: true

end
