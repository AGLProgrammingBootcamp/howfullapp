class CreateLeaveCounters < ActiveRecord::Migration
  def change
    create_table :leave_counters do |t|
      t.integer :leave

      t.timestamps null: false
    end
  end
end
