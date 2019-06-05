class AmenityListing < ApplicationRecord
  belongs_to :listing,optional: true
  belongs_to :amenity,optional: true
end
