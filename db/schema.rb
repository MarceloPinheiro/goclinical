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

ActiveRecord::Schema.define(version: 20141219170542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acessos", force: true do |t|
    t.integer  "user_id"
    t.integer  "menu_id"
    t.string   "acao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acessos", ["menu_id"], name: "index_acessos_on_menu_id", using: :btree
  add_index "acessos", ["user_id"], name: "index_acessos_on_user_id", using: :btree

  create_table "fornecedores", force: true do |t|
    t.string   "fornecedor"
    t.string   "contato"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lancamentoprodutos", force: true do |t|
    t.integer  "lancamento"
    t.integer  "produto"
    t.decimal  "quantidade"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lancamentos", force: true do |t|
    t.integer  "obra"
    t.integer  "fornecedor"
    t.integer  "nota"
    t.decimal  "valor"
    t.integer  "status",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.string   "descricao"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menusubs", force: true do |t|
    t.integer  "menu_id"
    t.string   "descricao"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "modulo"
  end

  add_index "menusubs", ["menu_id"], name: "index_menusubs_on_menu_id", using: :btree

  create_table "obras", force: true do |t|
    t.string   "obra"
    t.date     "inicio"
    t.date     "fim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", force: true do |t|
    t.integer  "obra"
    t.decimal  "valor"
    t.integer  "mes"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagamentos", force: true do |t|
    t.integer  "lancamento_id"
    t.date     "vencimento"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pagamentos", ["lancamento_id"], name: "index_pagamentos_on_lancamento_id", using: :btree

  create_table "produtos", force: true do |t|
    t.string   "descricao"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "confirmed_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
