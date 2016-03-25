class CreateEnterConters < ActiveRecord::Migration
  def change
    create_table :enter_conters do |t|
      t.integer :enter

      t.timestamps null: false
    end
  end
end
