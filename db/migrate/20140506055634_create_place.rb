class CreatePlace < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
    end
  end
end
