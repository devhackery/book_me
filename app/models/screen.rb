class Screen < ApplicationRecord
  has_many :seats
  has_many :shows
  has_many :bookings, through: :shows
  has_many :booked_seats, through: :bookings, source: :seats

  validates :title, uniqueness: true
  def available_seats
    seats.where.not(id: booked_seat_ids)
  end
end
