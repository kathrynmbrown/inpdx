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
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :background, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/
end
