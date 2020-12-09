class CreateBookingsTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings_taxes do |t|
      t.references :booking
      t.references :tax
      t.float :tax_amount

      t.timestamps
    end
  end
end
