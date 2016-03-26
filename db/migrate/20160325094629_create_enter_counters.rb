class CreateEnterCounters < ActiveRecord::Migration
  def change
    create_table :enter_counters do |t|
      t.integer :enter, default: 0

      t.timestamps null: false
    end
  end
end
