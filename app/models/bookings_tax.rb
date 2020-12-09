class BookingsTax < ApplicationRecord
    belongs_to :booking
    belongs_to :tax
end
