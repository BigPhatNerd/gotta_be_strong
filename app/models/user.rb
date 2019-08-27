class User < ApplicationRecord
 has_many :titles
 has_many :weeks
 has_many :max_weights
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
