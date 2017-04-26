class Picture < ApplicationRecord
  belongs_to :album
  has_many :comments
  
end
