class Profile < ActiveRecord::Base
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :reviews
  has_many :places, through: :reviews
  has_many :rsvps
  has_many :events, through: :rsvps
end
