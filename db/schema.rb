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

ActiveRecord::Schema.define(version: 2021_06_10_201914) do

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_building", limit: 25
    t.integer "number_appartement"
    t.integer "number_floor"
    t.integer "number_basement"
    t.integer "number_compagny"
    t.integer "number_parking"
    t.integer "number_elevator"
    t.integer "number_corporate"
    t.integer "max_occupancy"
    t.integer "business_hour"
    t.string "ele_standard", limit: 25
    t.integer "ele_amount"
    t.integer "ele_price_unit"
    t.integer "ele_total_price"
    t.integer "inst_fee"
    t.integer "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "ele_premium"
    t.binary "ele_excelium"
  end

end
