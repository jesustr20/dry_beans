class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :type
      t.string :destination_name
      t.string :firstname
      t.string :lastname
      t.string :dni
      t.string :country
      t.string :province
      t.string :district
      t.string :avenue
      t.string :product_name
      t.references :journey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
