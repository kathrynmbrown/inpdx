class ChangeDatetimeToDateandTime < ActiveRecord::Migration
  def change
    add_column :events, :event_date, :date
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
    remove_column :events, :datetime, :string
  end
end
