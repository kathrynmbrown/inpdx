class Rsvp < ActiveRecord::Base
  belongs_to :event
  belongs_to :profile
  resourcify
end
