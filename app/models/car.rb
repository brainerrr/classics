class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  CATEGORIES = ["German", "French", "British", "Italian", "American"]
  validates :brand, :model, :year, :price_day, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

