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

ActiveRecord::Schema.define(version: 2019_09_14_204816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "max_weights", force: :cascade do |t|
    t.integer "max_squat"
    t.integer "max_bench"
    t.integer "max_deadlift"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_max_weights_on_user_id"
  end

  create_table "program_names", force: :cascade do |t|
    t.string "program_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_program_names_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "exercise"
    t.integer "sets"
    t.integer "reps"
    t.integer "intensity"
    t.integer "prescribed_load"
    t.integer "actual_load"
    t.string "tempo"
    t.integer "rest"
    t.text "notes"
    t.integer "title_id"
    t.boolean "exercise_completed", default: false
    t.boolean "workout_completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id"], name: "index_programs_on_title_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week_id"
    t.boolean "title_completed", default: false
    t.index ["user_id"], name: "index_titles_on_user_id"
    t.index ["week_id"], name: "index_titles_on_week_id"
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

  create_table "weeks", force: :cascade do |t|
    t.string "week_name"
    t.integer "title_id"
    t.integer "user_id"
    t.integer "program_name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "week_completed", default: false
    t.index ["program_name_id"], name: "index_weeks_on_program_name_id"
    t.index ["user_id"], name: "index_weeks_on_user_id"
  end

end
