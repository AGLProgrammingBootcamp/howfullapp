class AddOccToCaves < ActiveRecord::Migration
  def change
    add_column :caves, :occ, :integer
  end
end
