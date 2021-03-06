class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string  :name
      t.references :favoriteable, polymorphic: true

      t.timestamps
    end
  end
end
