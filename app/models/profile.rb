class Profile < ActiveRecord::Base
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :reviews
  has_many :places, through: :reviews
end
