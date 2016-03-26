class AddStoreIdToCaves < ActiveRecord::Migration
  def change
    add_column :caves, :store_id, :integer
  end
end
