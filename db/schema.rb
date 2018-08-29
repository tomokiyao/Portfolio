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

ActiveRecord::Schema.define(version: 2018_08_28_071343) do

  create_table "free_traders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trader_title"
    t.text "wanted_detail"
    t.integer "trader_genre"
    t.integer "first_number_of_people"
    t.integer "second_number_of_people"
    t.date "first_term"
    t.date "second_term"
    t.integer "user_id"
    t.string "area"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sent_id"
    t.text "content"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_title"
    t.integer "genre"
    t.integer "location"
    t.string "fee"
    t.string "time"
    t.text "project_content"
    t.text "required_skill"
    t.text "welcome_skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "project"
    t.text "project_image_id"
    t.text "detail_location"
    t.text "top_image_id"
    t.integer "user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "made_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "profile_image_id"
    t.string "name"
    t.integer "kind_id"
    t.integer "residence"
    t.text "pr"
    t.text "experience"
    t.string "skill"
    t.text "top_image_id"
    t.text "mission"
    t.text "service"
    t.text "establishment"
    t.string "employee"
    t.string "average_age"
    t.string "catchphrase"
    t.string "detail_residence"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
