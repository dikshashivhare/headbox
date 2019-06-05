# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_03_113818) do

  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.integer "amenity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_type_id"], name: "index_amenities_on_amenity_type_id"
  end

  create_table "amenity_listings", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_amenity_listings_on_amenity_id"
    t.index ["listing_id"], name: "index_amenity_listings_on_listing_id"
  end

  create_table "amenity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communication_preferences", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.string "zipcode"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "custom_listing_categories", force: :cascade do |t|
    t.string "name"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_custom_listing_categories_on_listing_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "space_name"
    t.string "venue_name"
    t.string "description"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.string "zipcode"
    t.string "timezone"
    t.string "seating"
    t.string "standing"
    t.string "boardrooms"
    t.string "classrooms"
    t.string "theatre"
    t.string "u_shaped"
    t.string "cabaret"
    t.string "area_type"
    t.string "area_dimension"
    t.string "ceiling_type"
    t.string "ceiling_dimension"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "notification_preferences", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.integer "notification_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notification_type_id"], name: "index_notification_preferences_on_notification_type_id"
  end

  create_table "notification_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_communication_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "communication_preference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["communication_preference_id"], name: "communication_preferenceable_index"
    t.index ["user_id"], name: "index_user_communication_preferences_on_user_id"
  end

  create_table "user_listing_categories", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "listing_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_category_id"], name: "index_user_listing_categories_on_listing_category_id"
    t.index ["listing_id"], name: "index_user_listing_categories_on_listing_id"
  end

  create_table "user_notification_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "notification_preference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notification_preference_id"], name: "notification_preferenceable_index"
    t.index ["user_id"], name: "index_user_notification_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_number"
    t.string "landline_number"
    t.string "job_title"
    t.string "description"
    t.string "interested_city"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
