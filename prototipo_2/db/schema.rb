# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_28_030609) do
  create_table "campos", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "localidad"
    t.integer "superficie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campos_on_user_id"
  end

  create_table "caract_fisicas", force: :cascade do |t|
    t.integer "suelo_id", null: false
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suelo_id"], name: "index_caract_fisicas_on_suelo_id"
  end

  create_table "caract_quimicas", force: :cascade do |t|
    t.integer "suelo_id", null: false
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suelo_id"], name: "index_caract_quimicas_on_suelo_id"
  end

  create_table "componentes_fiscos", force: :cascade do |t|
    t.integer "caractfisica_id", null: false
    t.text "componente"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caractfisica_id"], name: "index_componentes_fiscos_on_caractfisica_id"
  end

  create_table "cuidados", force: :cascade do |t|
    t.integer "cultivo_id", null: false
    t.text "tipo_riego"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cultivo_id"], name: "index_cuidados_on_cultivo_id"
  end

  create_table "cultivos", force: :cascade do |t|
    t.string "planta"
    t.integer "campo_id", null: false
    t.integer "superficei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campo_id"], name: "index_cultivos_on_campo_id"
  end

  create_table "elemento_quims", force: :cascade do |t|
    t.integer "caractquimica_id", null: false
    t.text "elemento"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caractquimica_id"], name: "index_elemento_quims_on_caractquimica_id"
  end

  create_table "hongos", force: :cascade do |t|
    t.date "fecha"
    t.integer "cultivo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.index ["cultivo_id"], name: "index_hongos_on_cultivo_id"
  end

  create_table "productos_cuidados", force: :cascade do |t|
    t.integer "cuidado_id", null: false
    t.string "tipo"
    t.text "marca"
    t.date "fecha_aplicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cuidado_id"], name: "index_productos_cuidados_on_cuidado_id"
  end

  create_table "suelos", force: :cascade do |t|
    t.integer "cultivo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cultivo_id"], name: "index_suelos_on_cultivo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campos", "users"
  add_foreign_key "caract_fisicas", "suelos"
  add_foreign_key "caract_quimicas", "suelos"
  add_foreign_key "componentes_fiscos", "caractfisicas"
  add_foreign_key "cuidados", "cultivos"
  add_foreign_key "cultivos", "campos"
  add_foreign_key "elemento_quims", "caractquimicas"
  add_foreign_key "hongos", "cultivos"
  add_foreign_key "productos_cuidados", "cuidados"
  add_foreign_key "suelos", "cultivos"
end
