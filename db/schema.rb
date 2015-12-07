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

ActiveRecord::Schema.define(version: 20151110220352) do

  create_table "bokes", force: :cascade do |t|
    t.text     "text"
    t.string   "tag"
    t.integer  "category_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "theme_id"
    t.integer  "user_id"
    t.integer  "ratings_count", default: 0, null: false
  end

  add_index "bokes", ["category_id"], name: "index_bokes_on_category_id", using: :btree
  add_index "bokes", ["theme_id"], name: "index_bokes_on_theme_id", using: :btree
  add_index "bokes", ["user_id"], name: "index_bokes_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_type", default: 0, null: false
  end

  create_table "prefs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "rank"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "boke_id"
  end

  add_index "ratings", ["boke_id"], name: "index_rations_on_boke_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.string   "title"
    t.string   "tag"
    t.integer  "category_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image"
    t.integer  "status",      default: 0, null: false
    t.integer  "user_id"
    t.integer  "bokes_count", default: 0, null: false
  end

  add_index "themes", ["category_id"], name: "index_themes_on_category_id", using: :btree
  add_index "themes", ["user_id"], name: "index_themes_on_user_id", using: :btree

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
    t.string   "nickname"
    t.integer  "sex"
    t.boolean  "sex_secret"
    t.date     "birthday"
    t.boolean  "birthday_secret"
    t.integer  "pref"
    t.boolean  "pref_secret"
    t.text     "profile"
    t.string   "avatar"
    t.integer  "ratings_count",          default: 0,  null: false
    t.integer  "bokes_count",            default: 0,  null: false
    t.integer  "themes_count",           default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bokes", "categories"
  add_foreign_key "ratings", "users"
  add_foreign_key "themes", "categories"
end
