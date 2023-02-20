class ChangeNameTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :routes, :route_planner
  end
end
