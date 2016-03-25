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

ActiveRecord::Schema.define(version: 20160325071052) do

  create_table "caves", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.boolean  "smoking"
    t.integer  "seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_dbs", force: :cascade do |t|
    t.string   "store"
    t.string   "location"
    t.string   "smorkingornot"
    t.string   "seats"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "store_detabases", force: :cascade do |t|
    t.string   "store"
    t.string   "location"
    t.string   "smorkingornot"
    t.string   "capacity"
    t.integer  "filled_seat"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end