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

ActiveRecord::Schema.define(version: 2021_05_18_021431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_driver_connections", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "driver_id"
    t.boolean "is_favored", default: false
    t.boolean "is_favorite", default: false
    t.boolean "is_favorite_at_level_3", default: false
    t.boolean "is_favorite_at_level_6", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_driver_connections_on_course_id"
    t.index ["driver_id"], name: "index_course_driver_connections_on_driver_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "debut_tour"
    t.datetime "date_added"
    t.string "debut_game"
    t.boolean "is_reverse"
    t.boolean "is_trick"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "debut_system"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "rarity"
    t.string "special_skill"
    t.string "debut_tour"
    t.datetime "date_added"
    t.boolean "extended_tongue", default: false
    t.boolean "horns", default: false
    t.boolean "mustache", default: false
    t.boolean "shell", default: false
    t.boolean "three_hairs", default: false
    t.boolean "baby", default: false
    t.boolean "daily_select", default: false
    t.boolean "kong", default: false
    t.boolean "koopaling", default: false
    t.boolean "crown", default: false
    t.boolean "dress", default: false
    t.boolean "earrings", default: false
    t.boolean "gloves", default: false
    t.boolean "hat", default: false
    t.boolean "helmet", default: false
    t.boolean "ribbon", default: false
    t.boolean "short_sleeves", default: false
    t.boolean "tie", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position"
  end

end
