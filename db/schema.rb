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

ActiveRecord::Schema.define(version: 2020_09_14_160308) do

  create_table "bookings", force: :cascade do |t|
    t.integer "show_id"
    t.string "number"
    t.integer "status"
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_bookings_on_show_id"
  end

  create_table "bookings_seats", id: false, force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "seat_id", null: false
    t.index ["booking_id", "seat_id"], name: "index_bookings_seats_on_booking_id_and_seat_id"
    t.index ["seat_id", "booking_id"], name: "index_bookings_seats_on_seat_id_and_booking_id"
  end

  create_table "bookings_taxes", force: :cascade do |t|
    t.integer "booking_id"
    t.integer "tax_id"
    t.float "tax_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_bookings_taxes_on_booking_id"
    t.index ["tax_id"], name: "index_bookings_taxes_on_tax_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "screen_id"
    t.string "name"
    t.string "seat_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["screen_id"], name: "index_seats_on_screen_id"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "screen_id"
    t.boolean "active"
    t.time "start_at"
    t.time "end_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_shows_on_movie_id"
    t.index ["screen_id"], name: "index_shows_on_screen_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.string "title"
    t.decimal "charge", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
