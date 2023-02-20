class ChangeNameColumnDestination < ActiveRecord::Migration[7.0]
  def change
    rename_column :destinations, :type, :type_operation
  end
end
