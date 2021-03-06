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

ActiveRecord::Schema.define(version: 20150128203207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barterables", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "venue"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "event_begin_time",                                       null: false
    t.datetime "event_finish_time",                                      null: false
    t.string   "note",                                      default: "", null: false
    t.decimal  "price",             precision: 8, scale: 2
  end

  create_table "signups", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "have_id"
    t.integer  "need_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.string   "community",    default: "",    null: false
    t.integer  "item_id"
    t.integer  "skill_id"
    t.boolean  "paid",         default: false
    t.string   "stripe_token"
  end

  add_index "signups", ["email"], name: "index_signups_on_email", using: :btree

end
