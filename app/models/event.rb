class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :contact, presence: true
  acts_as_taggable
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end

