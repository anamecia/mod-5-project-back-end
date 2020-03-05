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

ActiveRecord::Schema.define(version: 2020_03_05_113900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asthma_control_tests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "external_apis", force: :cascade do |t|
    t.string "weather"
    t.string "pollen"
    t.string "pollutants"
    t.string "air_quality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "brand_name"
    t.string "drug_name", array: true
    t.string "dosage"
    t.string "group", array: true
    t.string "pharmaceutical_form"
    t.integer "number_of_doses", array: true
    t.string "leaflet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rxes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "medicine_id"
    t.boolean "rescue"
    t.integer "remaining_doses"
    t.string "taken_doses", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taken_doses", force: :cascade do |t|
    t.integer "rx_id"
    t.integer "count"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.date "date_of_birth"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
