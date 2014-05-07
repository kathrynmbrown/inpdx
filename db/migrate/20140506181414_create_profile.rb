class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :website_link
      t.string :twitter_handle
      t.string :headline
    end
  end
end
