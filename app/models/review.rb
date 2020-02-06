class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :stars, presence: true, numericality: { less_than_or_equal_to: 5 }
end
