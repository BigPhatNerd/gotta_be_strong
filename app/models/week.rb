class Week < ApplicationRecord
belongs_to :user
has_many :titles
end
