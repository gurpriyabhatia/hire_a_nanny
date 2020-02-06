class Booking < ApplicationRecord
  validates :start_date, :end_date, :number_of_children, :address, presence: true
  validates :duration, :number_of_children, numericality: true
  #validates_date :start_date, :end_date
  belongs_to :user
  belongs_to :nanny
end
