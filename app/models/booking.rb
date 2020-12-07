class Booking < ApplicationRecord
  before_validation :set_total_price
  belongs_to :plant
  belongs_to :user
  has_one :review


  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  def set_total_price
    self.total_price = (end_date - start_date).to_i * plant.price
  end
end
