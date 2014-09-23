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

ActiveRecord::Schema.define(version: 20140923015440) do

  create_table "agendamentos", force: true do |t|
    t.date     "data"
    t.time     "hora"
    t.integer  "Estagio_id"
    t.integer  "Emprego_id"
    t.integer  "PessoaFisica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agendamentos", ["Emprego_id"], name: "index_agendamentos_on_Emprego_id"
  add_index "agendamentos", ["Estagio_id"], name: "index_agendamentos_on_Estagio_id"
  add_index "agendamentos", ["PessoaFisica_id"], name: "index_agendamentos_on_PessoaFisica_id"

  create_table "empregos", force: true do |t|
    t.string   "cargo"
    t.integer  "quantidadeDeVagas"
    t.float    "salario"
    t.text     "descricao"
    t.string   "requisitos"
    t.integer  "PessoaJuridica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empregos", ["PessoaJuridica_id"], name: "index_empregos_on_PessoaJuridica_id"

  create_table "estagios", force: true do |t|
    t.string   "cargo"
    t.integer  "quantidadeDeVagas"
    t.integer  "salario"
    t.text     "descricao"
    t.string   "especificacaoDeVAga"
    t.integer  "PessoaJuridica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estagios", ["PessoaJuridica_id"], name: "index_estagios_on_PessoaJuridica_id"

  create_table "pessoa_fisicas", force: true do |t|
    t.string   "nomeCompleto"
    t.string   "idade"
    t.string   "dataNascimento"
    t.string   "endereco"
    t.integer  "cpf"
    t.string   "cidade"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoa_juridicas", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "email"
    t.string   "telefone"
    t.string   "porte"
    t.integer  "cnpj"
    t.string   "cidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end