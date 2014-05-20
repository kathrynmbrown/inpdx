class Profile < ActiveRecord::Base
  has_many :memberships
  has_many :organizations, through: :memberships
  has_many :reviews
  has_many :places, through: :reviews
  has_many :rsvps
  has_many :events, through: :rsvps
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :background, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/
end
