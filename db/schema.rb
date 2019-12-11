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

ActiveRecord::Schema.define(version: 2019_12_11_070155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_photos_on_article_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "citie_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "citie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citie_id"], name: "index_citie_photos_on_citie_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.text "content"
    t.string "map"
    t.string "favorite"
    t.string "address"
    t.bigint "countrie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["countrie_id"], name: "index_cities_on_countrie_id"
  end

  create_table "continent_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "continent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_continent_photos_on_continent_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.text "content"
    t.string "favorite"
    t.string "address"
    t.string "map"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_continents_on_user_id"
  end

  create_table "countrie_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "countrie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["countrie_id"], name: "index_countrie_photos_on_countrie_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.text "content"
    t.string "address"
    t.string "map"
    t.string "favorite"
    t.bigint "continent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "eat_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "eat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eat_id"], name: "index_eat_photos_on_eat_id"
  end

  create_table "eats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "summary"
    t.text "content"
    t.string "website_url"
    t.string "instagram_handle"
    t.integer "price_range"
    t.integer "rating"
    t.bigint "citie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citie_id"], name: "index_eats_on_citie_id"
  end

  create_table "sleep_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "sleep_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sleep_id"], name: "index_sleep_photos_on_sleep_id"
  end

  create_table "sleeps", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "summary"
    t.text "content"
    t.string "website_url"
    t.string "instagram_handle"
    t.integer "price_range"
    t.integer "rating"
    t.bigint "citie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citie_id"], name: "index_sleeps_on_citie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visit_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visit_id"], name: "index_visit_photos_on_visit_id"
  end

  create_table "visits", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "summary"
    t.text "content"
    t.string "website_url"
    t.string "instagram_handle"
    t.integer "price_range"
    t.integer "rating"
    t.bigint "citie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citie_id"], name: "index_visits_on_citie_id"
  end

  add_foreign_key "article_photos", "articles"
  add_foreign_key "articles", "users"
  add_foreign_key "citie_photos", "cities", column: "citie_id"
  add_foreign_key "cities", "countries", column: "countrie_id"
  add_foreign_key "continent_photos", "continents"
  add_foreign_key "continents", "users"
  add_foreign_key "countrie_photos", "countries", column: "countrie_id"
  add_foreign_key "countries", "continents"
  add_foreign_key "eat_photos", "eats"
  add_foreign_key "eats", "cities", column: "citie_id"
  add_foreign_key "sleep_photos", "sleeps"
  add_foreign_key "sleeps", "cities", column: "citie_id"
  add_foreign_key "visit_photos", "visits"
  add_foreign_key "visits", "cities", column: "citie_id"
end
