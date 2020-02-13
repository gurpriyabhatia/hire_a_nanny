class Nanny < ApplicationRecord
  include AlgoliaSearch
  validates :nanny_name, presence: true
  validates :price_per_hour, presence: true, numericality: true
  validates :years_of_experience, numericality: true || 0
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP  }
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_save :load_algolia

  algoliasearch do
  end

  private

  def load_algolia
    index = Algolia::Index.new('Hire-a-nanny')
    index.add_object(self)
    puts "Reindex done"
  end
end
