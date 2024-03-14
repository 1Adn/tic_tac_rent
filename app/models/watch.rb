class Watch < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :description, presence: true
  validates :movement_type, presence: true
  validates :movement_type, inclusion: { in: ["Manual", "Automatic"] }
  validates :gender, presence: true
  validates :gender, inclusion: { in: ["Woman", "Men", "Kid"] }
end
