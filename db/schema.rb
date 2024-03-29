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

ActiveRecord::Schema.define(version: 2019_12_02_100236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "sender_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_messages_on_receiver_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "scrims", force: :cascade do |t|
    t.boolean "confirmation", default: false
    t.bigint "team_host_id"
    t.bigint "team_visitor_id"
    t.string "winner_team"
    t.integer "team_host_kills"
    t.integer "team_visitor_kills"
    t.string "team_host_champions"
    t.string "team_visitor_champions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_game"
    t.datetime "start_game"
    t.index ["team_host_id"], name: "index_scrims_on_team_host_id"
    t.index ["team_visitor_id"], name: "index_scrims_on_team_visitor_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "league"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "user_histories", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "team_one_kills"
    t.integer "team_two_kills"
    t.integer "duration"
    t.string "winner"
    t.string "team_one_champions"
    t.string "team_two_champions"
    t.string "team_one_players"
    t.string "team_two_players"
    t.string "player_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_histories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudo"
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
    t.integer "season_wins"
    t.integer "season_losses"
    t.string "rank"
    t.integer "league_points"
    t.string "lol_account"
    t.string "most_used_champions"
    t.bigint "team_id"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "messages", "users", column: "receiver_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "scrims", "teams", column: "team_host_id"
  add_foreign_key "scrims", "teams", column: "team_visitor_id"
  add_foreign_key "user_histories", "users"
  add_foreign_key "users", "teams"
end
