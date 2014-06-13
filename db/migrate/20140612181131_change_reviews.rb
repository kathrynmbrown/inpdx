class ChangeReviews < ActiveRecord::Migration
  def change
    remove_reference :reviews, :place, index: true
    add_reference :reviews, :product, index: true
    add_reference :reviews, :company, index: true
  end
end
