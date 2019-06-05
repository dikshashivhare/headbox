class CustomListingCategory < ApplicationRecord
  belongs_to :listing, optional: true
end
