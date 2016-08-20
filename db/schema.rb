# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160820071735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "branches", ["company_id"], name: "index_branches_on_company_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "rut"
    t.string   "company_name"
    t.string   "fantasy_name"
    t.string   "address"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "company_users", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "position"
    t.integer  "role_id"
  end

  add_index "company_users", ["company_id"], name: "index_company_users_on_company_id", using: :btree
  add_index "company_users", ["role_id"], name: "index_company_users_on_role_id", using: :btree
  add_index "company_users", ["user_id"], name: "index_company_users_on_user_id", using: :btree

  create_table "equipment_types", force: :cascade do |t|
    t.string   "brand_model"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "warehouse_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "master_maintenance_plans", force: :cascade do |t|
    t.boolean  "lubrication"
    t.string   "subject"
    t.text     "description"
    t.integer  "frecuency"
    t.integer  "equipment_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "master_maintenance_plans", ["equipment_type_id"], name: "index_master_maintenance_plans_on_equipment_type_id", using: :btree

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.integer  "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "plants", ["branch_id"], name: "index_plants_on_branch_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "name"
    t.string   "warehouse_code"
    t.string   "part_number"
    t.float    "price"
    t.float    "stock"
    t.string   "um"
    t.integer  "item_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "brand_model"
  end

  add_index "supplies", ["item_id"], name: "index_supplies_on_item_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.integer  "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systems", ["plant_id"], name: "index_systems_on_plant_id", using: :btree

  create_table "task_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "description"
    t.integer  "task_type_id"
    t.integer  "master_maintenance_plan_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "tasks", ["master_maintenance_plan_id"], name: "index_tasks_on_master_maintenance_plan_id", using: :btree
  add_index "tasks", ["task_type_id"], name: "index_tasks_on_task_type_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "branches", "companies"
  add_foreign_key "company_users", "companies"
  add_foreign_key "company_users", "roles"
  add_foreign_key "company_users", "users"
  add_foreign_key "master_maintenance_plans", "equipment_types"
  add_foreign_key "plants", "branches"
  add_foreign_key "supplies", "items"
  add_foreign_key "systems", "plants"
  add_foreign_key "tasks", "master_maintenance_plans"
  add_foreign_key "tasks", "task_types"
end
