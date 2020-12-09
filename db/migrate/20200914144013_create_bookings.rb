class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :show
      t.string :number
      t.integer :status
      t.float :total
      t.timestamps
    end
  end
end
