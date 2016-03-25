class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :location
      t.boolean :smoking
      t.integer :seat
      t.integer :occn
      t.timestamps null: false
    end
  end
end
