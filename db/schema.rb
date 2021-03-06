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

ActiveRecord::Schema.define(version: 20180315223019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fee_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees", force: :cascade do |t|
    t.bigint "fee_type_id"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
    t.index ["fee_type_id"], name: "index_fees_on_fee_type_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fee_id"
    t.date "init_date"
    t.integer "duration"
    t.index ["fee_id"], name: "index_payments_on_fee_id"
    t.index ["person_id"], name: "index_payments_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.string "street", limit: 255
    t.string "number", limit: 10
    t.string "colony", limit: 255
    t.string "telephone", limit: 15
    t.datetime "birthday"
  end

  add_foreign_key "fees", "fee_types"
  add_foreign_key "payments", "fees"
  add_foreign_key "payments", "people"
end
