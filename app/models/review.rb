class Review < ActiveRecord::Base
  belongs_to :company
  belongs_to :profile
  belongs_to :product
  belongs_to :restaurant
end
