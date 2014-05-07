class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :datetime, presence: true
  validates :contact, presence: true
end

