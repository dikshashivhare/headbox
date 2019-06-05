class CreateAmenityListings < ActiveRecord::Migration[5.2]
  def change
    create_table :amenity_listings do |t|
      t.references :listing, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
