class User < ApplicationRecord
 has_many :titles
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
