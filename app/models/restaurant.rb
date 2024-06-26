class Restaurant < ApplicationRecord
  ALL_STYLES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ALL_STYLES,
  message: "%{value} is not a valid category" }
end
