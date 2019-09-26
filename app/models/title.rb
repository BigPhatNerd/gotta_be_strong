class Title < ApplicationRecord
	belongs_to :week
	has_many :programs, :dependent => :destroy
	default_scope { order(created_at: :asc) }

	

end
