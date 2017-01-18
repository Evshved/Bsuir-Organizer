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

ActiveRecord::Schema.define(version: 20170116140852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "color_travel"
    t.string   "color_work"
    t.string   "color_labs"
    t.string   "color_lectures"
    t.string   "color_seminars"
    t.string   "color_nonactive_lessons"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "number_of_group"
    t.integer  "id_group_api"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "empty"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "id_of_week"
    t.string   "weekday"
    t.string   "start_time_class"
    t.string   "end_time_class"
    t.string   "name_of_subject"
    t.string   "type_of_subject"
    t.integer  "id_of_subgroup"
    t.string   "number_of_audience"
    t.string   "teacher"
    t.string   "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "id_of_group"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "id_of_week"
    t.string   "weekday"
    t.string   "type_of_subject"
    t.integer  "id_of_subgroup"
    t.string   "number_of_audience"
    t.string   "teacher"
    t.string   "note"
    t.integer  "user_id"
    t.string   "start_time_class"
    t.string   "end_time_class"
    t.string   "name_of_subject"
    t.string   "active"
  end

  create_table "settings", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "beginning_of_work"
    t.string   "end_of_work"
    t.integer  "time_home_to_work"
    t.integer  "time_work_to_univer"
    t.integer  "time_univer_to_home"
    t.integer  "min_work_time"
    t.integer  "user_id"
  end

  create_table "travels", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "id_of_week"
    t.integer  "weekday"
    t.integer  "time_of_travel"
    t.string   "note"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: ""
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
    t.string   "user_name"
    t.string   "number_of_group"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["user_name"], name: "index_users_on_user_name", unique: true, using: :btree
  end

  create_table "weeks", force: :cascade do |t|
    t.string   "date"
    t.integer  "number_of_week"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "works", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "id_of_week"
    t.integer  "weekday"
    t.integer  "time_of_work"
    t.string   "note"
  end

end
