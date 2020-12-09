class Booking < ApplicationRecord
    belongs_to :show
    has_and_belongs_to_many :seats
    has_many :bookings_taxes
    has_many :taxes, through: :bookings_taxes
    accepts_nested_attributes_for :bookings_taxes
end
