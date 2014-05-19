class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :contact, presence: true
  acts_as_taggable
  belongs_to :organization
  belongs_to :place
  has_many :rsvps
  has_many :profiles, through: :rsvps
end
