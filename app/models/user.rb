class User < ApplicationRecord
 has_many :programs
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
