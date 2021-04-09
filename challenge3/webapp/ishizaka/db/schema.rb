# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_27_143312) do

  create_table "datasets", force: :cascade do |t|
    t.integer "label"
    t.integer "house_id", null: false
    t.integer "year"
    t.integer "month"
    t.decimal "temperature"
    t.decimal "daylight"
    t.integer "energy_production"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_datasets_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.integer "num_of_people"
    t.string "has_child"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "datasets", "houses"
end
