class Job < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  validates :name, :description, :location, :price, :photo, :user_id, :category_id, presence: true
  mount_uploader :photo, PhotoUploader
end
