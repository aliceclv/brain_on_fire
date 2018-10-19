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

ActiveRecord::Schema.define(version: 2018_10_19_095257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crisis_treatments", force: :cascade do |t|
    t.float "dose"
    t.bigint "migraine_id"
    t.bigint "treatment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["migraine_id"], name: "index_crisis_treatments_on_migraine_id"
    t.index ["treatment_id"], name: "index_crisis_treatments_on_treatment_id"
  end

  create_table "crisis_triggers", force: :cascade do |t|
    t.bigint "trigger_id"
    t.bigint "migraine_id"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["migraine_id"], name: "index_crisis_triggers_on_migraine_id"
    t.index ["trigger_id"], name: "index_crisis_triggers_on_trigger_id"
  end

  create_table "migraines", force: :cascade do |t|
    t.datetime "triggered_at"
    t.integer "intensity"
    t.boolean "cured"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "triggers", force: :cascade do |t|
    t.string "trigger_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "crisis_treatments", "migraines"
  add_foreign_key "crisis_treatments", "treatments"
  add_foreign_key "crisis_triggers", "migraines"
  add_foreign_key "crisis_triggers", "triggers"
end
