class CreateJoinTableBookingSeats < ActiveRecord::Migration[6.0]
  def change
    create_join_table :bookings, :seats do |t|
      t.index [:booking_id, :seat_id]
      t.index [:seat_id, :booking_id]
    end
  end
end
