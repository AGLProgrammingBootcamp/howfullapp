class CreateEnterCounters < ActiveRecord::Migration
  def change
    create_table :enter_counters do |t|
      t.integer :enter

      t.timestamps null: false
    end
  end
end
