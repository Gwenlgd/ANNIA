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

ActiveRecord::Schema[7.0].define(version: 2022_10_25_071532) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "lits_id", null: false
    t.string "statut"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lits_id"], name: "index_bookings_on_lits_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cabanes", force: :cascade do |t|
    t.string "name"
    t.bigint "chambre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chambre_id"], name: "index_cabanes_on_chambre_id"
  end

  create_table "chambres", force: :cascade do |t|
    t.bigint "lits_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lits_id"], name: "index_chambres_on_lits_id"
  end

  create_table "lits", force: :cascade do |t|
    t.string "nombre_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repas", force: :cascade do |t|
    t.string "items"
    t.string "allergies"
    t.integer "quantities"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "drinks"
    t.index ["user_id"], name: "index_repas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voyages", force: :cascade do |t|
    t.string "category"
    t.string "ville"
    t.string "rendezvous"
    t.integer "place"
    t.time "heure_arrivee"
    t.date "date_arrivee"
    t.time "heure_depart"
    t.date "date_depart"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_voyages_on_user_id"
  end

  add_foreign_key "bookings", "lits", column: "lits_id"
  add_foreign_key "bookings", "users"
  add_foreign_key "cabanes", "chambres"
  add_foreign_key "chambres", "lits", column: "lits_id"
  add_foreign_key "repas", "users"
  add_foreign_key "voyages", "users"
end
