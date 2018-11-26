class Job < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  validates :name, :description, :location, :price, :photo, :user_id, :category_id, presence: true
end
