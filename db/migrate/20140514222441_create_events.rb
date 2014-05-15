class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  "name"
      t.string  "description"
      t.string  "contact"
      t.float   "latitude"
      t.float   "longitude"
      t.string  "address"
      t.string  "long_description"
      t.date    "event_date"
      t.time    "start_time"
      t.time    "end_time"
      t.belongs_to "organization", index: true
      t.belongs_to "place", index: true
    end
  end
end
