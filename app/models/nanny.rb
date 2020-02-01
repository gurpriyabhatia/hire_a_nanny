class Nanny < ApplicationRecord
  validates :nanny_name, uniqueness: true, presence: true
  validates :price_per_hour, presence: true, numericality: true
  validates :years_of_experience, numericality: true || 0
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP  }
end
