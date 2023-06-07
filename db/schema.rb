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

ActiveRecord::Schema[7.0].define(version: 2023_06_07_122930) do
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
    t.bigint "games_id", null: false
    t.bigint "point_of_interests_id", null: false
    t.string "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_enigmas_on_games_id"
    t.index ["point_of_interests_id"], name: "index_enigmas_on_point_of_interests_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.text "synopsis"
    t.integer "sub_score"
    t.string "poster_url"
    t.string "timer"
    t.string "winner_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hints", force: :cascade do |t|
    t.string "content"
    t.bigint "enigmas_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enigmas_id"], name: "index_hints_on_enigmas_id"
  end

  create_table "point_of_interests", force: :cascade do |t|
    t.text "anecdote"
    t.string "poster_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_game_hints", force: :cascade do |t|
    t.boolean "is_used", default: true
    t.bigint "hints_id", null: false
    t.bigint "user_games_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hints_id"], name: "index_user_game_hints_on_hints_id"
    t.index ["user_games_id"], name: "index_user_game_hints_on_user_games_id"
  end

  create_table "user_games", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "games_id", null: false
    t.boolean "finish", default: false
    t.integer "progression"
    t.boolean "answered_with_good_answer_enigma", default: false
    t.string "game_timer"
    t.string "guess_code"
    t.string "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_user_games_on_games_id"
    t.index ["users_id"], name: "index_user_games_on_users_id"
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

  add_foreign_key "enigmas", "games", column: "games_id"
  add_foreign_key "enigmas", "point_of_interests", column: "point_of_interests_id"
  add_foreign_key "hints", "enigmas", column: "enigmas_id"
  add_foreign_key "user_game_hints", "hints", column: "hints_id"
  add_foreign_key "user_game_hints", "user_games", column: "user_games_id"
  add_foreign_key "user_games", "games", column: "games_id"
  add_foreign_key "user_games", "users", column: "users_id"
end
