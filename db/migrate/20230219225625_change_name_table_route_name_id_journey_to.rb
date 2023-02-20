class ChangeNameTableRouteNameIdJourneyTo < ActiveRecord::Migration[7.0]
  def change
    rename_column :journeys, :route_name_id, :route_planners_id
  end
end
