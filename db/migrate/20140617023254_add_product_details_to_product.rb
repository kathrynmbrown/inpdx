class AddProductDetailsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :product_details, :text
    add_column :products, :ordering_details, :text
  end
end
