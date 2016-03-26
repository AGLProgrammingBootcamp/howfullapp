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

ActiveRecord::Schema.define(version: 20160326003456) do

  create_table "caves", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.boolean  "smoking"
    t.integer  "seat"
    t.integer  "occn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "store_id"
  end

  create_table "counters", force: :cascade do |t|
    t.integer  "enter"
    t.integer  "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enter_conters", force: :cascade do |t|
    t.integer  "enter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enter_counters", force: :cascade do |t|
    t.integer  "enter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "leave_conters", force: :cascade do |t|
    t.integer  "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_counters", force: :cascade do |t|
    t.integer  "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
