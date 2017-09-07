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

ActiveRecord::Schema.define(version: 20170906054225) do

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "cuisine", null: false
    t.integer "rating"
    t.boolean "accepts_10bis"
    t.string "address", null: false
    t.integer "max_delivery_time_minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accepts_10bis"], name: "index_restaurants_on_accepts_10bis"
    t.index ["cuisine"], name: "index_restaurants_on_cuisine"
    t.index ["max_delivery_time_minutes"], name: "index_restaurants_on_max_delivery_time_minutes"
    t.index ["name"], name: "index_restaurants_on_name"
    t.index ["rating"], name: "index_restaurants_on_rating"
  end

end
