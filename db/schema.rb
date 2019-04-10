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

ActiveRecord::Schema.define(version: 20190410052347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abraham_histories", force: :cascade do |t|
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "tour_name"
    t.integer  "creator_id",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["created_at"], name: "index_abraham_histories_on_created_at", using: :btree
    t.index ["creator_id"], name: "index_abraham_histories_on_creator_id", using: :btree
    t.index ["updated_at"], name: "index_abraham_histories_on_updated_at", using: :btree
  end

  create_table "beenheretrackers", force: :cascade do |t|
    t.string   "ipaddress"
    t.boolean  "beenhere"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ipaddresstrackers", force: :cascade do |t|
    t.string   "ipaddress"
    t.boolean  "upvoted"
    t.integer  "upvotedcount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "videoid"
    t.boolean  "beenhere"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "file"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "contributor"
    t.string   "email"
    t.string   "phone"
    t.integer  "cached_votes_total", default: 0
    t.integer  "cached_votes_up",    default: 0
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

end
