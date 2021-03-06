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

ActiveRecord::Schema.define(version: 2018_09_22_093245) do

  create_table "equal_determine_tables", force: :cascade do |t|
    t.float "equal_value"
    t.string "determine_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equal_determines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_items", force: :cascade do |t|
    t.string "item_name"
    t.string "determine_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "range_determine_tables", force: :cascade do |t|
    t.integer "range_determine_id"
    t.float "from_value"
    t.float "to_value"
    t.string "determine_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["range_determine_id"], name: "index_range_determine_tables_on_range_determine_id"
  end

  create_table "range_determines", force: :cascade do |t|
    t.integer "exam_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_item_id"], name: "index_range_determines_on_exam_item_id"
  end

end
