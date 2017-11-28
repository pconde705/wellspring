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

ActiveRecord::Schema.define(version: 20171128173845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_backers", force: :cascade do |t|
    t.integer "project_id"
    t.integer "reward_id"
    t.integer "backer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.integer "creator_id", null: false
    t.string "category", null: false
    t.string "main_image_url"
    t.string "extra_image_url"
    t.text "description", null: false
    t.integer "goal", null: false
    t.integer "money_raised"
    t.integer "backers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_projects_on_category"
    t.index ["title"], name: "index_projects_on_title"
  end

  create_table "rewards", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "amount", null: false
    t.string "reward_subtitle", null: false
    t.string "reward_description", null: false
    t.string "includes"
    t.date "reward_date"
    t.integer "reward_backers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "img_url"
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_token"], name: "index_users_on_session_token"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
