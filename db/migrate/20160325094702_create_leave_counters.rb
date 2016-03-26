class CreateLeaveCounters < ActiveRecord::Migration
  def change
    create_table :leave_counters do |t|
      t.integer :leave, default: 0

      t.timestamps null: false
    end
  end
end
