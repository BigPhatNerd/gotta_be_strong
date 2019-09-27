class Title < ApplicationRecord
	belongs_to :week
	has_many :programs, :dependent => :destroy
	default_scope { order(created_at: :asc) }

	def self.title_incomplete
		where(title_completed: false).order('id DESC')
	end

	def self.title_completed
		where(title_completed: true).order('id DESC')
	end

	

end
