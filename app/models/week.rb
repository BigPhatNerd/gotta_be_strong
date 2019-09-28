class Week < ApplicationRecord
belongs_to :program_name
has_many :titles, :dependent => :destroy
default_scope { order(created_at: :asc) }

scope :completed, -> { where(week_completed: true) }
scope :incomplete, -> { where(week_completed: false) }

end
