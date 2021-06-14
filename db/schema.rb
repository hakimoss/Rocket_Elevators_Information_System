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

ActiveRecord::Schema.define(version: 2021_06_14_163707) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_address"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.integer "suite_or_apartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.string "email"
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name_of_the_contact"
    t.string "company_name"
    t.string "email"
    t.integer "phone"
    t.string "project_name"
    t.string "project_description"
    t.string "department_in_charge_of_the_elevators"
    t.string "message"
    t.binary "attached_file_stored_as_a_binary_file"
    t.date "date_of_the_contact_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_building"
    t.integer "number_appartement"
    t.integer "number_floor"
    t.integer "number_basement"
    t.integer "number_compagny"
    t.integer "number_parking"
    t.integer "number_elevator"
    t.integer "number_corporate"
    t.integer "max_occupancy"
    t.integer "business_hour"
    t.string "elevator_type"
    t.integer "ele_amount"
    t.integer "ele_price_unit"
    t.integer "ele_total_price"
    t.integer "inst_fee"
    t.integer "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
