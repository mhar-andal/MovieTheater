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

ActiveRecord::Schema.define(version: 20170216161541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.integer  "seating_capacity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "runtime"
    t.string   "poster_link"
    t.string   "imdb_link"
    t.string   "rotten_tomatoes_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "ticket_id"
    t.integer  "seat_id"
    t.integer  "showing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "cinema_id"
    t.string   "seat_identifier"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "showings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "cinema_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "credit_card"
    t.string   "expiration_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
