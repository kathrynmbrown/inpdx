class AddAttachmentBackgroundToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :background
    end
  end

  def self.down
    drop_attached_file :profiles, :background
  end
end
