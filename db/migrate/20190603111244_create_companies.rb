class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :zipcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
