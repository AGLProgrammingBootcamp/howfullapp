class CreateLeaveCounts < ActiveRecord::Migration
  def change
    create_table :leave_counts do |t|
      t.integer :cafe_id
      t.integer :leavecount, default: 0

      t.timestamps null: false
    end
  end
end
