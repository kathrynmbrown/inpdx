class Organization < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :contact, presence: true
  acts_as_taggable
  has_many :events
  has_many :places, through: :events
  has_many :memberships
  has_many :profiles, through: :memberships
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :background_image, :styles => { :large => "1500x400>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :background_image, :content_type => /\Aimage\/.*\Z/
end
