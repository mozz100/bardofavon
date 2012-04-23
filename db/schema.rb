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

ActiveRecord::Schema.define(:version => 0) do

  create_table "chapters", :force => true do |t|
    t.string  "WorkID",      :limit => 32, :null => false
    t.integer "Act",                       :null => false
    t.integer "Scene",                     :null => false
    t.text    "Description",               :null => false
    t.integer "work_id",                   :null => false
  end

  add_index "chapters", ["work_id"], :name => "work_id"

  create_table "characters", :force => true do |t|
    t.string "CharID",      :limit => 32,  :null => false
    t.string "CharName",    :limit => 128, :null => false
    t.string "Abbrev",      :limit => 32,  :null => false
    t.string "Works",       :limit => 128, :null => false
    t.text   "Description",                :null => false
  end

  create_table "paragraphs", :force => true do |t|
    t.string  "WorkID",       :limit => 32, :null => false
    t.integer "ParagraphNum",               :null => false
    t.string  "CharID",       :limit => 32, :null => false
    t.text    "PlainText",                  :null => false
    t.integer "Act",                        :null => false
    t.integer "Scene",                      :null => false
    t.integer "work_id",                    :null => false
    t.integer "character_id",               :null => false
  end

  add_index "paragraphs", ["character_id"], :name => "character_id"
  add_index "paragraphs", ["work_id"], :name => "work_id"

  create_table "works", :force => true do |t|
    t.string  "WorkID",    :limit => 32,  :null => false
    t.string  "Title",     :limit => 128, :null => false
    t.text    "LongTitle",                :null => false
    t.integer "Date",                     :null => false
    t.string  "GenreType", :limit => 32,  :null => false
  end

end
