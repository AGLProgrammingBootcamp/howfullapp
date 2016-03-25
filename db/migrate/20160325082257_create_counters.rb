class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :enter
      t.integer :leave

      t.timestamps null: false
    end
  end
end
