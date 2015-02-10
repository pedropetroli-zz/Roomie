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

ActiveRecord::Schema.define(version: 20150210050805) do

  create_table "calendars", force: true do |t|
    t.integer  "house_id"
    t.date     "arrival"
    t.date     "departure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "house_searches", force: true do |t|
    t.integer  "house_id"
    t.date     "arrival"
    t.date     "departure"
    t.decimal  "total_amounth"
    t.decimal  "rental"
    t.decimal  "fee"
    t.decimal  "insurance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "researcher_id"
  end

  create_table "houses", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.decimal  "rental"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "rentings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
    t.integer  "host_id"
    t.integer  "guest_id"
    t.date     "arrival"
    t.date     "departure"
    t.integer  "rent_rate"
    t.integer  "total_rental"
    t.integer  "fee"
    t.boolean  "insurance"
    t.integer  "host_amount"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "house_id"
    t.integer  "renting_id"
    t.integer  "rating_1"
    t.integer  "rating_2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
