class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :type
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :dni
      t.string :country
      t.string :province
      t.string :district
      t.string :avenue

      t.timestamps
    end
  end
end
