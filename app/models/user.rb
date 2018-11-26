class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_jobs, class_name: "Job"
  has_many :booked_jobs, through: :bookings, source: :thing

  has_many :bookings
end
