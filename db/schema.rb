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

ActiveRecord::Schema.define(version: 20131117181026) do

  create_table "candidatos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "circunscripcions", force: true do |t|
    t.string   "nombre"
    t.integer  "comuna_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "circunscripcions", ["comuna_id"], name: "index_circunscripcions_on_comuna_id"

  create_table "comunas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "nombre"
    t.integer  "circunscripcion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["circunscripcion_id"], name: "index_locals_on_circunscripcion_id"

  create_table "mesas", force: true do |t|
    t.integer  "circunscripcion_id"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "local_id"
    t.integer  "browne"
    t.integer  "duran"
    t.integer  "freire"
    t.integer  "golborne"
    t.integer  "Lemuñir"
    t.integer  "orellana"
    t.integer  "ripetti"
    t.integer  "sule"
    t.integer  "teiller"
  end

  add_index "mesas", ["circunscripcion_id"], name: "index_mesas_on_circunscripcion_id"
  add_index "mesas", ["local_id"], name: "index_mesas_on_local_id"

  create_table "resultados", force: true do |t|
    t.integer  "mesa_id"
    t.integer  "candidato_id"
    t.integer  "votos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "browne"
    t.integer  "duran"
    t.integer  "freire"
    t.integer  "golborne"
    t.integer  "Lemuñir"
    t.integer  "orellana"
    t.integer  "ripetti"
    t.integer  "sule"
    t.integer  "teiller"
  end

  add_index "resultados", ["candidato_id"], name: "index_resultados_on_candidato_id"
  add_index "resultados", ["mesa_id"], name: "index_resultados_on_mesa_id"

end
