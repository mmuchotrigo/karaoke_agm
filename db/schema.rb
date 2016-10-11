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

ActiveRecord::Schema.define(version: 20161010030729) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_time"
    t.integer  "capacity"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "description"
    t.integer  "manager_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locals", ["manager_id"], name: "index_locals_on_manager_id"

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.decimal  "price"
    t.boolean  "available"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "productos", ["category_id"], name: "index_productos_on_category_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "dni"
    t.string   "telefono"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "reservations", force: :cascade do |t|
    t.integer  "salas_id"
    t.integer  "clients_id"
    t.datetime "date_time"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["clients_id"], name: "index_reservations_on_clients_id"
  add_index "reservations", ["salas_id"], name: "index_reservations_on_salas_id"

  create_table "salas", force: :cascade do |t|
    t.string   "name"
    t.string   "capacity"
    t.string   "description"
    t.integer  "local_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "salas", ["local_id"], name: "index_salas_on_local_id"

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string   "name"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.string   "name"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.string   "dni"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "usuarios", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "tipo_usuario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "usuarios", ["tipo_usuario_id"], name: "index_usuarios_on_tipo_usuario_id"

end
