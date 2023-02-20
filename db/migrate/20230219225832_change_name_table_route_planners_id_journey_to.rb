class ChangeNameTableRoutePlannersIdJourneyTo < ActiveRecord::Migration[7.0]
  def change
    rename_column :journeys, :route_planners_id, :route_planner_id
  end
end
