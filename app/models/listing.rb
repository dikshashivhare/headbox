class Listing < ApplicationRecord
  belongs_to :user, optional:true
  has_many :amenity_listings
  has_many :amenities, through: :amenity_listings
  has_many :user_listing_categories
  has_many :listing_categories, through: :user_listing_categories
  has_many :custom_listing_categories
  has_many :images, as: :imageable
end
