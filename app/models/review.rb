class Review < ApplicationRecord
  belongs_to :service

  validates :content, :rating, presence: true
  validates :content, length: { minimum: 50 }
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5) }
end
