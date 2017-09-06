class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.integer :rating
      t.boolean :accepts_10bis
      t.string :address
      t.integer :max_delivery_time_minutes

      t.timestamps
    end
  end
end
