class Organization < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :contact, presence: true
  acts_as_taggable
  has_many :events
  has_many :places, through: :events

end
