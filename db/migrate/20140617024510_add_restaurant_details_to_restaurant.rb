class AddRestaurantDetailsToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :website, :text
    add_column :restaurants, :hours, :text
  end
end
