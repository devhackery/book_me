class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :movie
      t.references :screen
      t.boolean :active
      t.time :start_at
      t.time :end_at
            

      t.timestamps
    end
  end
end
