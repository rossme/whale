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

ActiveRecord::Schema.define(version: 2020_10_24_171708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "voyages", force: :cascade do |t|
    t.string "voyage_code"
    t.string "name"
    t.string "port"
    t.integer "year"
    t.string "whaling_ground"
    t.string "sealing_ground"
    t.integer "whales"
    t.integer "whale_oil"
    t.integer "seals"
    t.integer "seal_oil"
    t.integer "other_whales"
    t.string "source"
    t.string "notes"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
