class CreateUserListingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_listing_categories do |t|
      t.references :listing, foreign_key: true
      t.references :listing_category, foreign_key: true

      t.timestamps
    end
  end
end
