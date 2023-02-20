class ChangeNameTableIdJourney < ActiveRecord::Migration[7.0]
  def change
    rename_column :journeys, :route_id, :route_name_id
  end
end
