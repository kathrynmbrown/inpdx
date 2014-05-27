class AddGuestsToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :guests, :integer
  end
end
