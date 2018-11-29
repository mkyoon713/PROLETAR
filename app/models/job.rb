class Job < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  validates :name, :description, :location, :price, :photo, :user_id, :category_id, presence: true
  mount_uploader :photo, PhotoUploader

  def average_rating
    ratings = 0
    self.bookings.each do |booking|
      ratings += booking.rating if !booking.rating.nil?
    end

    if (ratings == 0) || (self.bookings.count == 0)
      return "None"
    else
      return(ratings / self.bookings.count)
    end
  end
end
