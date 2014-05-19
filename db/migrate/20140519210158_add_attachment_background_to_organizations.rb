class AddAttachmentBackgroundToOrganizations < ActiveRecord::Migration
  def self.up
    change_table :organizations do |t|
      t.attachment :background
    end
  end

  def self.down
    drop_attached_file :organizations, :background
  end
end
