class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :route_name
      t.references :journey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
