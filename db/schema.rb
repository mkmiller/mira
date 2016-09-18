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

ActiveRecord::Schema.define(version: 20160913003504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anthologies", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "publisher"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["slug"], name: "index_anthologies_on_slug", unique: true, using: :btree
  end

  create_table "artworks", force: :cascade do |t|
    t.string   "file"
    t.integer  "comic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comic_pages", force: :cascade do |t|
    t.integer  "number"
    t.integer  "artwork_id"
    t.integer  "web_comic_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comics", force: :cascade do |t|
    t.string   "name"
    t.string   "publisher"
    t.string   "role"
    t.string   "slug"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "anthology_id"
    t.datetime "published_at"
    t.index ["slug"], name: "index_comics_on_slug", unique: true, using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "url"
    t.integer  "comic_id"
    t.integer  "vendor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "anthology_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_comics", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_web_comics_on_slug", unique: true, using: :btree
  end

end
