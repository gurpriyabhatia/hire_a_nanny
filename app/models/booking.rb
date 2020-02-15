class Booking < ApplicationRecord
  include AlgoliaSearch
  validates :start_date, :end_date, :number_of_children, :address, presence: true
  validates :number_of_children, numericality: true
  #validates_date :start_date, :end_date
  belongs_to :user
  belongs_to :nanny
  has_one :review, dependent: :destroy

  algoliasearch do
  end
end
