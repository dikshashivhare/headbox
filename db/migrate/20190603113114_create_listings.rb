class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :space_name
      t.string :venue_name
      t.string :description
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :zipcode
      t.string :timezone
      t.string :seating
      t.string :standing
      t.string :boardrooms
      t.string :classrooms
      t.string :theatre
      t.string :u_shaped
      t.string :cabaret
      t.string :area_type
      t.string :area_dimension
      t.string :ceiling_type
      t.string :ceiling_dimension
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
