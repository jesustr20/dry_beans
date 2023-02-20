class ChangeNameTableRoutePlannerTo < ActiveRecord::Migration[7.0]
  def change
    rename_table :routeplanner, :route_planners
  end
end
