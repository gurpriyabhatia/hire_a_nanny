class Nanny < ApplicationRecord
  validates :nanny_name, presence: true
  validates :price_per_hour, presence: true, numericality: true
  validates :years_of_experience, numericality: true || 0
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP  }
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
