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

ActiveRecord::Schema.define(version: 2018_07_18_001641) do

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

  create_table "answers", force: :cascade do |t|
    t.text "body"
    t.bigint "forum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_id"], name: "index_answers_on_forum_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_bookmarks_on_route_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_comments_on_route_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_forums_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_pictures_on_route_id"
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "route_id"
    t.bigint "user_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_ratings_on_route_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "difficulty"
    t.string "route_type"
    t.string "pitches"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "pictures"
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "location"
    t.boolean "isAdmin"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "forums"
  add_foreign_key "bookmarks", "routes"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "comments", "routes"
  add_foreign_key "comments", "users"
  add_foreign_key "forums", "users"
  add_foreign_key "pictures", "routes"
  add_foreign_key "pictures", "users"
  add_foreign_key "ratings", "routes"
  add_foreign_key "ratings", "users"
  add_foreign_key "routes", "users"
end
