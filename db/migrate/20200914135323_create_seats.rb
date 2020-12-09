class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.references :screen
      t.string :name
      t.string :seat_category

      t.timestamps
    end
  end
end
