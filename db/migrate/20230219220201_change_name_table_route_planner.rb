class ChangeNameTableRoutePlanner < ActiveRecord::Migration[7.0]
  def change
    rename_table :route_planner, :routeplanner
  end
end
