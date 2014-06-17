class Favorite < ActiveRecord::Base
  belongs_to :favoriteable, polymorphic: true
  belongs_to :user, inverse_of: :favorites

  validates :user_id, uniqueness: {
    scope: [:favoriteable_id, :favoriteable_type],
    message: 'can only favorite an item once'
  }
end
