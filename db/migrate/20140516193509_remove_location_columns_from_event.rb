class RemoveLocationColumnsFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :latitude, :float
    remove_column :events, :longitude, :float
    remove_column :events, :address, :string
  end
end
