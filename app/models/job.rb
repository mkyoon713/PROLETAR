class Job < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, :description, :location, :price, :photo, :user_id, :category_id, presence: true
  mount_uploader :photo, PhotoUploader

  def average_rating
    ratings = 0
    self.bookings.each do |booking|
      booking.reviews.each do |review|
        ratings += review.rating if !review.rating.nil?
      end
    end
    if ratings == 0 || self.bookings.count == 0
      return "None"
    else
      return (ratings / self.reviews.count)
    end
  end
end
