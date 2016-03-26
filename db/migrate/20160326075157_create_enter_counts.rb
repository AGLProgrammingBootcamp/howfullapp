class CreateEnterCounts < ActiveRecord::Migration
  def change
    create_table :enter_counts do |t|
      t.integer :cafe_id
      t.integer :entercount, default: 0

      t.timestamps null: false
    end
  end
end
