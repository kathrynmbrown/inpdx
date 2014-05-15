class CreateOrganizationsProfiles < ActiveRecord::Migration
  def change
    create_table :organizations_profiles, :id => false do |t|
      t.integer :organization_id
      t.integer :profile_id
    end
  end
end
