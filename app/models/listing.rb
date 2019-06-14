class Listing < ApplicationRecord
  geocoded_by :address_line_one, :latitude => :lat, :longitude => :lon            
   after_validation :geocode 
  
  belongs_to :user, optional:true
  has_many :amenity_listings
  has_many :amenities, through: :amenity_listings
  has_many :user_listing_categories
  has_many :listing_categories, through: :user_listing_categories
  has_many :custom_listing_categories
  has_many :images, as: :imageable


  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[overview address capacity]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end
end
