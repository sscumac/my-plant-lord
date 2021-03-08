class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :recoverable, :rememberable #:validatable, :database_authenticatable, :registerable 

  has_many :plants, dependent: :destroy
  has_many :bookings
end
