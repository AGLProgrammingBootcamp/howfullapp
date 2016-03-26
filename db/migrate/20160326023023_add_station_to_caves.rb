class AddStationToCaves < ActiveRecord::Migration
  def change
    add_column :caves, :station, :string
  end
end
