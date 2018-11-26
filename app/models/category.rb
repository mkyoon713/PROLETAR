class Category < ApplicationRecord
  has_many :jobs
  has_many :bookings, through: :jobs
  has_many :users, through: :jobs
  validates :name, :picture, presence: true
  validates :name, uniqueness: true
end
