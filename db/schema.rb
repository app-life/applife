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

ActiveRecord::Schema.define(version: 2019_10_07_094020) do

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encryped_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apps", force: :cascade do |t|
    t.integer "app_id"
    t.integer "genre_id"
    t.string "app_name"
    t.string "genre"
    t.string "category"
    t.integer "price"
    t.text "jacket_image_id"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.integer "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_apps", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
