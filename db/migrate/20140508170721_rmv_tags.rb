class RmvTags < ActiveRecord::Migration
  def change
    remove_column :places, :tags, :string, array: true, default: []
    remove_column :events, :tags, :string, array: true, default: []
    remove_column :organizations, :tags, :string, array: true, default: []
  end
end
