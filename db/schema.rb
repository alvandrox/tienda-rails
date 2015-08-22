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

ActiveRecord::Schema.define(version: 20150819214143) do

  create_table "articulos", force: :cascade do |t|
    t.string   "ean",          limit: 255
    t.integer  "producto_id",  limit: 4
    t.integer  "color_id",     limit: 4
    t.integer  "talla_id",     limit: 4
    t.integer  "precio_costo", limit: 4
    t.integer  "precio_venta", limit: 4
    t.integer  "stock",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "articulos", ["color_id"], name: "index_articulos_on_color_id", using: :btree
  add_index "articulos", ["producto_id"], name: "index_articulos_on_producto_id", using: :btree
  add_index "articulos", ["talla_id"], name: "index_articulos_on_talla_id", using: :btree

  create_table "articulos_ventas", id: false, force: :cascade do |t|
    t.integer "articulo_id", limit: 4, null: false
    t.integer "venta_id",    limit: 4, null: false
  end

  create_table "boletas", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "precio",     limit: 4
    t.integer  "venta_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "boletas", ["venta_id"], name: "index_boletas_on_venta_id", using: :btree

  create_table "categorias", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "colores", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "codigo",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "colores_productos", id: false, force: :cascade do |t|
    t.integer "color_id",    limit: 4, null: false
    t.integer "producto_id", limit: 4, null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "venta_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "facturas", ["venta_id"], name: "index_facturas_on_venta_id", using: :btree

  create_table "marcas", force: :cascade do |t|
    t.string   "nombre",       limit: 255
    t.integer  "proveedor_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "marcas", ["proveedor_id"], name: "index_marcas_on_proveedor_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "codigo",       limit: 255
    t.string   "descripcion",  limit: 255
    t.integer  "marca_id",     limit: 4
    t.integer  "categoria_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "productos", ["categoria_id"], name: "index_productos_on_categoria_id", using: :btree
  add_index "productos", ["marca_id"], name: "index_productos_on_marca_id", using: :btree

  create_table "productos_tallas", id: false, force: :cascade do |t|
    t.integer "producto_id", limit: 4, null: false
    t.integer "talla_id",    limit: 4, null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.string   "nombre",       limit: 255
    t.string   "razon_social", limit: 255
    t.string   "rut",          limit: 255
    t.string   "direccion",    limit: 255
    t.string   "telefono",     limit: 255
    t.string   "email",        limit: 255
    t.string   "url",          limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sin_boletas", force: :cascade do |t|
    t.integer  "venta_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "sin_boletas", ["venta_id"], name: "index_sin_boletas_on_venta_id", using: :btree

  create_table "tallas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
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

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "ventas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "boletas", "ventas"
  add_foreign_key "facturas", "ventas"
  add_foreign_key "sin_boletas", "ventas"
end
