class Restaurant < ApplicationRecord
  # A restaurant must have a name, an address and a category.
  has_many :reviews, dependent: :destroy
  CATEGORY=["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: CATEGORY
  validates :name, :address, :category, presence: true
end
