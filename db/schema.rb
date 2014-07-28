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

ActiveRecord::Schema.define(version: 20140728164022) do

  create_table "calendarios", force: true do |t|
    t.integer  "user_id"
    t.integer  "viagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendarios", ["user_id"], name: "index_calendarios_on_user_id", using: :btree
  add_index "calendarios", ["viagem_id"], name: "index_calendarios_on_viagem_id", using: :btree

  create_table "calendars", force: true do |t|
    t.integer  "user_id"
    t.integer  "viaem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendars", ["user_id"], name: "index_calendars_on_user_id", using: :btree
  add_index "calendars", ["viaem_id"], name: "index_calendars_on_viaem_id", using: :btree

  create_table "custos", force: true do |t|
    t.date     "data"
    t.decimal  "valor",              precision: 10, scale: 0
    t.integer  "viagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_id"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  add_index "custos", ["tipo_id"], name: "index_custos_on_tipo_id", using: :btree
  add_index "custos", ["viagem_id"], name: "index_custos_on_viagem_id", using: :btree

  create_table "despesas", force: true do |t|
    t.date     "data"
    t.decimal  "valor",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_id"
  end

  add_index "despesas", ["tipo_id"], name: "index_despesas_on_tipo_id", using: :btree

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "viagems", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id_id"
  end

  add_index "viagems", ["user_id_id"], name: "index_viagems_on_user_id_id", using: :btree

end
