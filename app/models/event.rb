class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :datetime, presence: true
  validates :contact, presence: true
  acts_as_taggable
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end

