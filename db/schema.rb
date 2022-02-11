# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_14_034639) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "location"
    t.string "website_url"
    t.string "skills"
    t.string "tools"
    t.string "biography"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.string "title"
    t.string "medium"
    t.string "dimensions"
    t.string "description"
    t.string "image_url"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  add_foreign_key "artworks", "artists"
end
