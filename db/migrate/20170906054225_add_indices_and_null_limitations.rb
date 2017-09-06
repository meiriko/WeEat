class AddIndicesAndNullLimitations < ActiveRecord::Migration[5.1]
  def change
    change_column_null :restaurants, :name, false
    change_column_null :restaurants, :cuisine, false
    change_column_null :restaurants, :address, false
    add_index :restaurants, :name
    add_index :restaurants, :cuisine
    add_index :restaurants, :max_delivery_time_minutes
    add_index :restaurants, :accepts_10bis
    add_index :restaurants, :rating
  end
end
