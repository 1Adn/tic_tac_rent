class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :watches, dependent: :destroy
end
