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

ActiveRecord::Schema[7.0].define(version: 2023_06_08_151919) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "poster_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enigmas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.bigint "point_of_interest_id"
    t.integer "order_in_the_game"
    t.index ["game_id"], name: "index_enigmas_on_game_id"
    t.index ["point_of_interest_id"], name: "index_enigmas_on_point_of_interest_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.text "synopsis"
    t.integer "sub_score"
    t.string "poster_url"
    t.string "winner_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_duration_in_sec"
  end

  create_table "hints", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "enigma_id"
    t.index ["enigma_id"], name: "index_hints_on_enigma_id"
  end

  create_table "point_of_interests", force: :cascade do |t|
    t.text "anecdote"
    t.string "poster_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_game_hints", force: :cascade do |t|
    t.boolean "is_used", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hint_id"
    t.bigint "user_game_id"
    t.index ["hint_id"], name: "index_user_game_hints_on_hint_id"
    t.index ["user_game_id"], name: "index_user_game_hints_on_user_game_id"
  end

  create_table "user_games", force: :cascade do |t|
    t.boolean "finish", default: false
    t.integer "progression"
    t.boolean "answered_with_good_answer_enigma", default: false
    t.string "guess_code"
    t.string "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "game_id"
    t.datetime "end_of_game_time"
    t.index ["game_id"], name: "index_user_games_on_game_id"
    t.index ["user_id"], name: "index_user_games_on_user_id"
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

  add_foreign_key "enigmas", "games"
  add_foreign_key "enigmas", "point_of_interests"
  add_foreign_key "hints", "enigmas"
  add_foreign_key "user_game_hints", "hints"
  add_foreign_key "user_game_hints", "user_games"
  add_foreign_key "user_games", "games"
  add_foreign_key "user_games", "users"
end
