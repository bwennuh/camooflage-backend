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

ActiveRecord::Schema.define(version: 2021_06_30_211027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_pins", force: :cascade do |t|
    t.bigint "board_id", null: false
    t.bigint "non_dairy_option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_pins_on_board_id"
    t.index ["non_dairy_option_id"], name: "index_board_pins_on_non_dairy_option_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "product_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "non_dairy_options", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "allergens"
    t.string "image"
    t.bigint "category_id", null: false
    t.bigint "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_non_dairy_options_on_brand_id"
    t.index ["category_id"], name: "index_non_dairy_options_on_category_id"
  end

  create_table "recipe_pins", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "non_dairy_option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["non_dairy_option_id"], name: "index_recipe_pins_on_non_dairy_option_id"
    t.index ["recipe_id"], name: "index_recipe_pins_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "ingredients"
    t.text "instructions"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "address"
    t.string "username"
    t.string "password"
    t.text "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "board_pins", "boards"
  add_foreign_key "board_pins", "non_dairy_options"
  add_foreign_key "boards", "users"
  add_foreign_key "non_dairy_options", "brands"
  add_foreign_key "non_dairy_options", "categories"
  add_foreign_key "recipe_pins", "non_dairy_options"
  add_foreign_key "recipe_pins", "recipes"
  add_foreign_key "recipes", "users"
end
