class CreateOrganization < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :contact
    end
  end
end
