class UserListingCategory < ApplicationRecord
  belongs_to :listing, optional: true
  belongs_to :listing_category, optional: true
end
