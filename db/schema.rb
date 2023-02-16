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

ActiveRecord::Schema.define(version: 2023_02_16_213705) do

  create_table "clientes", force: :cascade do |t|
    t.string "name", null: false
    t.string "document", null: false
    t.string "telephone", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document"], name: "index_clientes_on_document", unique: true
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documento"], name: "index_funcionarios_on_documento", unique: true
  end

  create_table "ordem_de_servicos", force: :cascade do |t|
    t.string "numero", null: false
    t.integer "cliente_id", null: false
    t.integer "funcionario_id", null: false
    t.text "descricao", null: false
    t.date "data_solicitacao", null: false
    t.date "previsao_conclusao", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "clientes_id"
    t.index ["cliente_id"], name: "index_ordem_de_servicos_on_cliente_id"
    t.index ["clientes_id"], name: "index_ordem_de_servicos_on_clientes_id"
    t.index ["funcionario_id"], name: "index_ordem_de_servicos_on_funcionario_id"
    t.index ["numero"], name: "index_ordem_de_servicos_on_numero", unique: true
  end

end
