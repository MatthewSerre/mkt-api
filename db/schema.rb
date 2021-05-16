# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_16_170845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "rarity"
    t.string "special_skill"
    t.string "debut_tour"
    t.datetime "date_added"
    t.boolean "has_extended_tongue"
    t.boolean "has_horns"
    t.boolean "has_mustache"
    t.boolean "has_shell"
    t.boolean "has_three_hairs"
    t.boolean "is_baby"
    t.boolean "is_daily_select"
    t.boolean "is_kong"
    t.boolean "is_koopaling"
    t.boolean "wears_crown"
    t.boolean "wears_dress"
    t.boolean "wears_earrings"
    t.boolean "wears_gloves"
    t.boolean "wears_hat"
    t.boolean "wears_helment"
    t.boolean "wears_ribbon"
    t.boolean "wears_short_sleeves"
    t.boolean "wears_tie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
