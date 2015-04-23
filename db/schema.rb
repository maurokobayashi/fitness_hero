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

ActiveRecord::Schema.define(version: 20150423215436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.date     "birthdate",  null: false
    t.string   "email",      null: false
    t.string   "mobile",     null: false
    t.string   "gender",     null: false
    t.string   "avatar"
    t.integer  "status",     null: false
    t.text     "more_info"
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alunos", ["email"], name: "index_alunos_on_email", using: :btree

  create_table "personals", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.date     "birthdate",  null: false
    t.string   "email",      null: false
    t.string   "mobile",     null: false
    t.string   "cref"
    t.string   "gender",     null: false
    t.string   "avatar"
    t.integer  "status",     null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "alunos", "users"
  add_foreign_key "personals", "users"
end
