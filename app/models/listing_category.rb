class ListingCategory < ApplicationRecord
  has_many :user_listing_categories
  has_many :listings, through: :user_listing_categories
end
