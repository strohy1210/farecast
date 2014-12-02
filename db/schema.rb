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

ActiveRecord::Schema.define(version: 20141201204155) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.boolean  "new_album"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", force: true do |t|
    t.integer  "artist_id"
    t.integer  "venue_id"
    t.string   "name"
    t.datetime "show_time"
    t.decimal  "face_value"
    t.boolean  "sold_out"
    t.float    "spotify_popularity"
    t.float    "sg_seatgeek_popularity"
    t.float    "sg_venue_popularity"
    t.float    "echo_familiarity"
    t.float    "echo_hotttnesss"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
