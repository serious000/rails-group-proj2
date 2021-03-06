# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160831172618) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "city"
    t.integer  "zipcode"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "state_id"
    t.integer  "beds"
    t.float    "baths"
    t.float    "price"
  end

  add_index "listings", ["category_id"], name: "index_listings_on_category_id"
  add_index "listings", ["subcategory_id"], name: "index_listings_on_subcategory_id"
  add_index "listings", ["user_id"], name: "index_listings_on_user_id"

  create_table "photos", force: true do |t|
    t.string   "title"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "photos", ["listing_id"], name: "index_photos_on_listing_id"

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phoneno"
  end

end
