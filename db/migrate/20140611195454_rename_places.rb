class RenamePlaces < ActiveRecord::Migration
  def change
    rename_table :places, :companies
  end
end
