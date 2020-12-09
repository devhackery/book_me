class Tax < ApplicationRecord
    has_many :booking_taxs
    has_many :bookings, through: :booking_taxs
end
