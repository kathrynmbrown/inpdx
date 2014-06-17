class DropMarks < ActiveRecord::Migration
  def change
    drop_table :marks
  end
end
