class Course < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :coaches, dependent: :destroy
end
