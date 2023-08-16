class Review < ApplicationRecord
  # A review must belong to a restaurant. OK
  belongs_to :restaurant
#   A review must have a content. OK
  validates :content, :rating, presence: true
  
  validates :rating, inclusion: {in: 0..5}, numericality: { only_integer: true}
  # validates :rating options_for_select((0..5).to_a, @review.rating)

# A review must have a rating. OK
# A review’s rating must be a number between 0 and 5. OK
# A review’s rating must be an integer. OK For example, a review with a rating of 2.5 should be invalid!
end
