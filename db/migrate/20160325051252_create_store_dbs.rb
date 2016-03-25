class CreateStoreDbs < ActiveRecord::Migration
  def change
    create_table :store_dbs do |t|
      t.string :store
      t.string :location
      t.string :smorkingornot
      t.string :seats

      t.timestamps null: false
    end
  end
end
