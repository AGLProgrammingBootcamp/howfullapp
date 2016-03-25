class CreateLeaveConters < ActiveRecord::Migration
  def change
    create_table :leave_conters do |t|
      t.integer :leave

      t.timestamps null: false
    end
  end
end
