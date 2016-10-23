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

ActiveRecord::Schema.define(version: 20161022052835) do

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clubs", ["user_id"], name: "index_clubs_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "club_id"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["club_id"], name: "index_teams_on_club_id"
  add_index "teams", ["tournament_id"], name: "index_teams_on_tournament_id"

  create_table "tournaments", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "host_city"
    t.integer  "club_id"
    t.string   "address",    null: false
    t.date     "start",      null: false
    t.date     "end",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tournaments", ["club_id"], name: "index_tournaments_on_club_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                 null: false
    t.string   "last_name"
    t.string   "email",                      null: false
    t.string   "password_digest",            null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "gender"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "phone_home"
    t.string   "phone_mobile"
    t.date     "birthday"
    t.string   "school"
    t.string   "education_level"
    t.string   "occupation"
    t.integer  "salary"
    t.string   "ethnicity"
    t.boolean  "has_verification"
    t.string   "medical_conditions"
    t.string   "allergies"
    t.string   "contact_parent_name"
    t.string   "contact_parent_address"
    t.string   "contact_parent_phone"
    t.string   "contact_parent_email"
    t.string   "contact_emergency_name"
    t.string   "contact_emergency_address"
    t.string   "contact_emergency_phone"
    t.string   "contact_emergency_email"
    t.string   "contact_emergency_relation"
    t.integer  "club_id"
  end

  add_index "users", ["club_id"], name: "index_users_on_club_id"

  create_table "users_teams", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
  end

  add_index "users_teams", ["team_id"], name: "index_users_teams_on_team_id"
  add_index "users_teams", ["user_id"], name: "index_users_teams_on_user_id"

end
