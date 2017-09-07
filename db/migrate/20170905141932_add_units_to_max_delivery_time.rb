class AddUnitsToMaxDeliveryTime < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :max_delivery_time_minutes, :max_delivery_time_minutes
  end
end
