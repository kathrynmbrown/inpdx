class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :datetime
      t.string :contact
    end
  end
end
