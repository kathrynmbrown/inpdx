class DeleteCategoryIds < ActiveRecord::Migration
  def change
    remove_column :places, :category_id, :integer
    remove_column :events, :category_id, :integer
    remove_column :organizations, :category_id, :integer
  end
end
