class ChangeNameColumnRoute < ActiveRecord::Migration[7.0]
  def change
    rename_column :routes, :roue_name, :route_name
  end
end
