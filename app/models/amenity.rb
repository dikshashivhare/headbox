class Amenity < ApplicationRecord
  belongs_to :amenity_type, optional: true
  has_many :amenity_listings
  has_many :listings, through: :amenity_listings
end
