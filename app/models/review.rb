class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true, allow_blank: false
  validates :rating, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
