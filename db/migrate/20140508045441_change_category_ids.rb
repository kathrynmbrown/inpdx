class ChangeCategoryIds < ActiveRecord::Migration
  def change
    remove_column :places, :category, :string
    remove_column :events, :category, :string
    remove_column :organizations, :category, :string
  end
end
