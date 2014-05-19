class AddAttachmentBackgroundToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :background
    end
  end

  def self.down
    drop_attached_file :events, :background
  end
end
