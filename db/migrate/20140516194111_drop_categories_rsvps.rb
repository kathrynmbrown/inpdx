class DropCategoriesRsvps < ActiveRecord::Migration
  def change
    drop_table :categories_rsvps
  end
end
