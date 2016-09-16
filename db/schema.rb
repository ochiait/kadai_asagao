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

ActiveRecord::Schema.define(version: 20160916042038) do

  create_table "calendar_items", force: :cascade do |t|
    t.string   "title",       null: false
    t.datetime "start_time",  null: false
    t.datetime "end_time",    null: false
    t.boolean  "all_day",     null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "location",    null: false
  end

  create_table "event_sites", primary_key: "site_id", force: :cascade do |t|
    t.string   "name",          null: false
    t.text     "description",   null: false
    t.integer  "prefecture_id", null: false
    t.string   "city",          null: false
    t.string   "address1",      null: false
    t.string   "address2",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "number",                        null: false
    t.string   "name",                          null: false
    t.string   "full_name"
    t.string   "email"
    t.date     "birthday"
    t.integer  "gender",        default: 0,     null: false
    t.boolean  "administrator", default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "score"
  end

end
