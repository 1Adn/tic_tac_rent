class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true

  has_many :watches, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
