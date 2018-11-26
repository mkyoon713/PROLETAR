class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :date, :status, :user_id, :job_id, :rating, presence: true
end
