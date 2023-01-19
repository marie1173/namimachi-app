class Coach < ApplicationRecord
  has_one_attached :image
  belongs_to :course
  belongs_to :user
  
end
