class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.belongs_to "event", index: true
      t.belongs_to "profile", index: true
      t.timestamps
    end
  end
end
