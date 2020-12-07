class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
