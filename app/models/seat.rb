class Seat < ApplicationRecord
  belongs_to :screen
  has_and_belongs_to_many :bookings

  validates :name, presence: true

  def price
    case seat_category
    when 'Platinum'
      320
    when 'Gold'
      280
    when 'Silver'
      240
    else
      0
    end
  end
end
