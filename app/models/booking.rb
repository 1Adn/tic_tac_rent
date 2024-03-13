class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  validates :starting_date, :ending_date, presence: true
  validate :ending_date_after_starting_date
  validates :status, inclusion: { in: ['Pending', 'Accepted', 'Declined'] }

  def ending_date_after_starting_date
    # vérifie si ending_date ou starting_date est vide => si true méthode se termine
    return if ending_date.blank? || starting_date.blank?

    if ending_date < starting_date
      errors.add(:ending_date, "must be after the starting date")
    end
  end
end
