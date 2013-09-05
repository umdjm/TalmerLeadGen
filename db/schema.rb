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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130904162008) do

  create_table "branches", :force => true do |t|
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leads", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
    t.string   "address"
    t.string   "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "branch"
    t.string   "city"
    t.string   "state"
    t.string   "answers"
    t.string   "source"
  end

  create_table "notifications", :force => true do |t|
    t.string   "status"
    t.integer  "lead_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "recipients"
  end

  add_index "notifications", ["lead_id"], :name => "index_notifications_on_lead_id"

  create_table "referrers", :force => true do |t|
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "return_url"
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
