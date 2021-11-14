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

ActiveRecord::Schema.define(version: 2021_11_14_090452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string "image_url"
    t.string "component_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "room"
    t.integer "power_generated"
  end

  create_table "crew_members", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.bigint "space_station_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["space_station_id"], name: "index_crew_members_on_space_station_id"
  end

  create_table "installments", force: :cascade do |t|
    t.bigint "space_station_id", null: false
    t.bigint "component_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["component_id"], name: "index_installments_on_component_id"
    t.index ["space_station_id"], name: "index_installments_on_space_station_id"
  end

  create_table "space_stations", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "crew_members", "space_stations"
  add_foreign_key "installments", "components"
  add_foreign_key "installments", "space_stations"
end
