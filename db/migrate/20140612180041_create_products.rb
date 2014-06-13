class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :company
      t.string :name
      t.string :description
      t.decimal :price, :precision => 5, :scale => 2
      t.timestamps
    end
  end
end
