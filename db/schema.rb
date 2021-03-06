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

ActiveRecord::Schema.define(:version => 20120425200655) do

  create_table "chapters", :force => true do |t|
    t.integer "act",         :null => false
    t.integer "scene",       :null => false
    t.text    "description", :null => false
    t.integer "work_id",     :null => false
  end

  add_index "chapters", ["work_id"], :name => "work_id"

  create_table "characters", :force => true do |t|
    t.string "name",        :limit => 128, :null => false
    t.string "abbrev",      :limit => 32,  :null => false
    t.text   "description",                :null => false
  end

  create_table "paragraphs", :force => true do |t|
    t.integer "paragraph_num",                :null => false
    t.text    "plain_text",                   :null => false
    t.integer "character_id",                 :null => false
    t.integer "chapter_id",    :default => 0, :null => false
  end

  add_index "paragraphs", ["character_id"], :name => "character_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month"
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :null => false
    t.string   "encrypted_password",                    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "works", :force => true do |t|
    t.string  "title",      :limit => 128, :null => false
    t.text    "long_title",                :null => false
    t.integer "year",                      :null => false
    t.string  "genre",      :limit => 32,  :null => false
  end

end
