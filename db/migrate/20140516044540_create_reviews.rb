class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to "profile", index: true
      t.belongs_to "place", index: true
      t.string :title
      t.text :content
      t.integer :rating
      t.timestamps
    end
  end
end
