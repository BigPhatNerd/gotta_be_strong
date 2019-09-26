class Program < ApplicationRecord
	belongs_to :title
	default_scope { order(created_at: :asc) }
	
	
end
