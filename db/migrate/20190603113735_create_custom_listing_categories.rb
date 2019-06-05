class CreateCustomListingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_listing_categories do |t|
      t.string :name
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
