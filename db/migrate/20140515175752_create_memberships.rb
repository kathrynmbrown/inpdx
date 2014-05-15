class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to "organization", index: true
      t.belongs_to "profile", index: true
      t.timestamps
    end
  end
end
