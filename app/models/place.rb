class Place < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  acts_as_taggable
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  has_many :events
  has_many :organizations, through: :events
  has_many :reviews
  has_many :profiles, through: :reviews
end
