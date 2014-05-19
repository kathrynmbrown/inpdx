class AddAttachmentBackgroundToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :background
    end
  end

  def self.down
    drop_attached_file :places, :background
  end
end
