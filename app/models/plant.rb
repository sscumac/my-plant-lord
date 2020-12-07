class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name, :description, :address],
    using: {
      tsearch: { prefix: true } # <-- tsearch allows partial words, e.g. batm for batman
    }
end
