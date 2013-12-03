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

ActiveRecord::Schema.define(version: 20131201162217) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "description"
    t.integer  "sort_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.integer  "feed_id"
    t.string   "title"
    t.string   "url"
    t.string   "author"
    t.text     "summary"
    t.datetime "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", force: true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.string   "url"
    t.string   "feed_url"
    t.string   "etag"
    t.datetime "last_modified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idols", force: true do |t|
    t.string   "fullname"
    t.string   "kana"
    t.integer  "age"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "bust"
    t.integer  "waist"
    t.integer  "hip"
    t.date     "birth"
    t.string   "blood"
    t.string   "dominant"
    t.string   "hobby"
    t.string   "speciality"
    t.string   "favorite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
