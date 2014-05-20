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
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :place, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :place, :content_type => /\Aimage\/.*\Z/
end
