class Week < ApplicationRecord
belongs_to :program_name
has_many :titles, :dependent => :destroy

end
