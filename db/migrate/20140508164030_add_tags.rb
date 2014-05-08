class AddTags < ActiveRecord::Migration
  def change
    add_column :places, :tags, :string, array: true, default: []
    add_column :events, :tags, :string, array: true, default: []
    add_column :organizations, :tags, :string, array: true, default: []
  end
end
