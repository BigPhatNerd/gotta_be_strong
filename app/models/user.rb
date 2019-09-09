class User < ApplicationRecord
 has_many :program_names, :dependent => :destroy
 
 has_many :max_weights
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
