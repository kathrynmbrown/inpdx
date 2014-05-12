class AddLongDescription < ActiveRecord::Migration
  def change
    add_column :events, :long_description, :string
  end
end
