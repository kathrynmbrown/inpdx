class AddCategoryIds < ActiveRecord::Migration
  def change
    add_column :places, :category_id, :integer
    add_column :events, :category_id, :integer
    add_column :organizations, :category_id, :integer
  end
end
