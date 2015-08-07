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

ActiveRecord::Schema.define(version: 20150806164041) do

  create_table "categorias", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colores", force: :cascade do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colores_productos", id: false, force: :cascade do |t|
    t.integer "color_id",    null: false
    t.integer "producto_id", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "proveedor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "marcas", ["proveedor_id"], name: "index_marcas_on_proveedor_id"

  create_table "productos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "marca_id"
    t.integer  "categoria_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "productos", ["categoria_id"], name: "index_productos_on_categoria_id"
  add_index "productos", ["marca_id"], name: "index_productos_on_marca_id"

  create_table "productos_tallas", id: false, force: :cascade do |t|
    t.integer "producto_id", null: false
    t.integer "talla_id",    null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.string   "nombre"
    t.string   "razon_social"
    t.string   "rut"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tallas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
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
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
