module Wizard
  module Listing
    STEPS = %w(step1 step2 step3 ).freeze

    class Base
      include ActiveModel::Model
      attr_accessor :listing

      delegate *::Listing.attribute_names.map { |attr| [attr, "#{attr}="] }.flatten, to: :listing

      def initialize(listing_attributes)
        @listing = ::Listing.new(listing_attributes)
      end
    end

    class Step1 < Base
      validates :space_name, presence: true
      validates :venue_name, presence: true
      validates :description, presence: true
    end

    class Step2 < Step1
      validates :address_line_1, presence: true
      validates :address_line_2, presence: true
      validates :city, presence: true
      validates :state, presence: true
      validates :country, presence: true
      validates :zipcode, presence: true
      validates :timezone, presence: true
    end

    class Step3 < Step2
      validates :seating, presence: true
      validates :standing, presence: true
      validates :boardrooms, presence: true
      validates :classrooms, presence: true
      validates :theatre, presence: true
      validates :u_shaped, presence: true
      validates :cabaret, presence: true
      validates :area_type, presence: true
      validates :area_dimension, presence: true
      validates :ceiling_type, presence: true
      validates :ceiling_dimension, presence: true

    end
  end
end

