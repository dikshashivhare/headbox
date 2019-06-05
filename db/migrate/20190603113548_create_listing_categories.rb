class CreateListingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
