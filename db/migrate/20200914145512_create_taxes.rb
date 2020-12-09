class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.string :title
      t.decimal :charge, precision: 10, scale: 2
      t.timestamps
    end
  end
end
