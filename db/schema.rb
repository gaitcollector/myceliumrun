# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_19_045835) do

  create_table "agar_recipes", force: :cascade do |t|
    t.string "abbreviation"
    t.string "name"
    t.text "recipe"
    t.text "method"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logs", force: :cascade do |t|
    t.text "body"
    t.integer "loggable_id"
    t.string "loggable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mushrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "petri_dishes", force: :cascade do |t|
    t.string "name", null: false
    t.string "sample"
    t.text "description", null: false
    t.text "protocol"
    t.integer "percent_complete", default: 0
    t.boolean "inoculated"
    t.datetime "inoculated_at"
    t.boolean "run_started"
    t.datetime "run_started_at"
    t.boolean "fully_colonized"
    t.datetime "fully_colonized_at"
    t.integer "mushroom_id", null: false
    t.integer "agar_recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agar_recipe_id"], name: "index_petri_dishes_on_agar_recipe_id"
    t.index ["mushroom_id"], name: "index_petri_dishes_on_mushroom_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "petri_dishes", "agar_recipes"
  add_foreign_key "petri_dishes", "mushrooms"
end
