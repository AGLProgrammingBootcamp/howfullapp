class CreateStoreDetabases < ActiveRecord::Migration
  def change
    create_table :store_detabases do |t|
      t.string :store
      t.string :location
      t.string :smorkingornot
      t.string :capacity
      t.integer :filled_seat

      t.timestamps null: false
    end
  end
end
