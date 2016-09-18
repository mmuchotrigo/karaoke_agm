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

ActiveRecord::Schema.define(version: 20160917155703) do

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.string   "email"
    t.string   "about"
    t.string   "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "tipe"
    t.string   "name"
    t.integer  "price"
    t.boolean  "available"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "productos", ["local_id"], name: "index_productos_on_local_id"

  create_table "salas", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.string   "about"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "salas", ["local_id"], name: "index_salas_on_local_id"

end
