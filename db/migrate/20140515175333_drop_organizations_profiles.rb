class DropOrganizationsProfiles < ActiveRecord::Migration
  def change
    drop_table :organizations_profiles
  end
end
