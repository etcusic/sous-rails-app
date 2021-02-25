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

ActiveRecord::Schema.define(version: 2021_02_25_210948) do

  create_table "grocery_list_items", force: :cascade do |t|
    t.integer "grocery_list_id", null: false
    t.integer "ingredient"
    t.integer "grocery_store"
    t.float "quantity"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grocery_list_id"], name: "index_grocery_list_items_on_grocery_list_id"
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grocery_store_items", force: :cascade do |t|
    t.integer "grocery_store_id", null: false
    t.integer "ingredient"
    t.float "price"
    t.float "quantity"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grocery_store_id"], name: "index_grocery_store_items_on_grocery_store_id"
  end

  create_table "grocery_stores", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pantries", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "pantry_items", force: :cascade do |t|
    t.integer "pantry_id", null: false
    t.integer "ingredient"
    t.float "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pantry_id"], name: "index_pantry_items_on_pantry_id"
  end

  create_table "recipe_items", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "ingredient"
    t.float "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_items_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.integer "portions"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "grocery_list_items", "grocery_lists"
  add_foreign_key "grocery_store_items", "grocery_stores"
  add_foreign_key "pantry_items", "pantries"
  add_foreign_key "recipe_items", "recipes"
end
