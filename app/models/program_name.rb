class ProgramName < ApplicationRecord
belongs_to :user
has_many :weeks, :dependent => :destroy
end
