class Review < ApplicationRecord
  belongs_to :restaurant
  # rating should be a whole numeber between 1 and 5
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # content should not be empty
  validates :content, presence: true
end
