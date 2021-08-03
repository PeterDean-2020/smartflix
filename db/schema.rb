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

ActiveRecord::Schema.define(version: 2021_08_03_133652) do

  create_table "movies", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year"
    t.integer "runtime"
    t.integer "metascore"
    t.string "rated"
    t.string "genre"
    t.string "director"
    t.string "writer"
    t.string "actors"
    t.string "language"
    t.string "country"
    t.string "awards"
    t.string "poster"
    t.string "imdb_id"
    t.string "box_office"
    t.string "production"
    t.string "website"
    t.date "released"
    t.text "plot"
    t.text "ratings"
    t.float "imdb_rating"
    t.bigint "imdb_votes"
    t.date "dvd"
    t.index ["title"], name: "index_movies_on_title"
  end

end
