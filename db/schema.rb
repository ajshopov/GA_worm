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

ActiveRecord::Schema.define(version: 20180207223021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "presentations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "description"
    t.text "metric"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "teacher_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "region"
  end

  create_table "teachers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "email"
    t.text "username"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "vote_moment"
    t.integer "vote_value"
    t.text "ip_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "presentation_id"
  end

  add_foreign_key "presentations", "teachers"
  add_foreign_key "votes", "presentations"
end
