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

ActiveRecord::Schema.define(version: 20160826232749) do

  create_table "athletes", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "nickname",   limit: 255
    t.string   "gender",     limit: 255
    t.integer  "age",        limit: 4
    t.integer  "team_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "athletes", ["team_id"], name: "index_athletes_on_team_id", using: :btree

  create_table "divisions", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "gender",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "team_id",       limit: 4
    t.integer  "division_id",   limit: 4
    t.integer  "wod1_score",    limit: 4
    t.integer  "wod1_place",    limit: 4
    t.integer  "wod2_score",    limit: 4
    t.integer  "wod2_place",    limit: 4
    t.integer  "wod3_score",    limit: 4
    t.integer  "wod3_place",    limit: 4
    t.integer  "wod4_score",    limit: 4
    t.integer  "wod4_place",    limit: 4
    t.integer  "wod5_score",    limit: 4
    t.integer  "wod5_place",    limit: 4
    t.integer  "overall_score", limit: 4
    t.integer  "overall_place", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name",        limit: 255
    t.string   "team_description", limit: 255
    t.integer  "division_id",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "athletes", "teams"
  add_foreign_key "teams", "divisions"
end
