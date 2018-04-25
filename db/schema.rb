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

ActiveRecord::Schema.define(version: 20180425220446) do

  create_table "coffee_shops", force: :cascade do |t|
    t.string "name"
    t.integer "closing_time"
    t.integer "popularity"
    t.string "city"
    t.string "bean_origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coffee_shops_drinks", id: false, force: :cascade do |t|
    t.integer "coffee_shop_id", null: false
    t.integer "drink_id", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "bean"
    t.integer "size"
    t.boolean "togo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
