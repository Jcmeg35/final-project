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

ActiveRecord::Schema.define(version: 20150821185926) do

  create_table "bids", force: :cascade do |t|
    t.decimal  "price",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rfp_id"
    t.integer  "users_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "commodity"
  end

  create_table "rfps", force: :cascade do |t|
    t.string   "delivery_type"
    t.datetime "delivery_date"
    t.datetime "end_date"
    t.datetime "start_date"
    t.decimal  "order_size"
    t.integer  "contract_length"
    t.integer  "delivery_frequency"
    t.integer  "ship_size"
    t.integer  "product_id"
    t.integer  "user_id"
  end

  create_table "specs", force: :cascade do |t|
    t.string   "type",                  null: false
    t.string   "name",                  null: false
    t.string   "unit"
    t.string   "limit"
    t.string   "test_method_reference"
    t.integer  "value"
    t.string   "appearance"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "product_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "title"
    t.string   "market_position"
    t.string   "country"
    t.integer  "postal_code"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
