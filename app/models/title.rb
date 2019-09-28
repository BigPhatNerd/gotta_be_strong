class Title < ApplicationRecord
	belongs_to :week
	has_many :programs, :dependent => :destroy
	default_scope { order(created_at: :asc) }
scope :completed, -> { where(title_completed: true) }
scope :incomplete, -> { where(title_completed: false) }

	
	

end
