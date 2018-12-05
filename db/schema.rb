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

ActiveRecord::Schema.define(version: 2018_12_05_223836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodstyle_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "restos", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string "budget"
    t.string "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resto_id"
    t.bigint "user_id"
    t.integer "foodstyle_category_id"
    t.index ["foodstyle_category_id"], name: "index_surveys_on_foodstyle_category_id"
    t.index ["resto_id"], name: "index_surveys_on_resto_id"
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "comment"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "surveys", "restos"
  add_foreign_key "surveys", "users"
end
