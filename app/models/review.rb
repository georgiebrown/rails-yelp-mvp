class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
