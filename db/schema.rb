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

ActiveRecord::Schema[7.0].define(version: 2023_02_07_100612) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "name", null: false
    t.json "conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "players_id"
    t.bigint "matches_id"
    t.index ["matches_id"], name: "index_achievements_on_matches_id"
    t.index ["players_id"], name: "index_achievements_on_players_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.integer "ran_kilometers", default: 0
    t.integer "goals", default: 0
    t.integer "pass_percentage", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "players_id"
    t.bigint "match_id"
    t.index ["match_id"], name: "index_events_on_match_id"
    t.index ["players_id"], name: "index_events_on_players_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teams_id", null: false
    t.bigint "events_id"
    t.index ["events_id"], name: "index_matches_on_events_id"
    t.index ["teams_id"], name: "index_matches_on_teams_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_id", null: false
    t.bigint "events_id"
    t.index ["events_id"], name: "index_players_on_events_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "players_id"
    t.index ["players_id"], name: "index_teams_on_players_id"
  end

  add_foreign_key "achievements", "matches", column: "matches_id"
  add_foreign_key "achievements", "players", column: "players_id"
  add_foreign_key "events", "matches"
  add_foreign_key "events", "players", column: "players_id"
  add_foreign_key "matches", "events", column: "events_id"
  add_foreign_key "matches", "teams", column: "teams_id"
  add_foreign_key "players", "events", column: "events_id"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "players", column: "players_id"
end
