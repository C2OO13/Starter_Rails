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

ActiveRecord::Schema.define(version: 2020_04_17_073505) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_chatrooms_on_name", unique: true
  end

  create_table "investors", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.datetime "dob"
    t.decimal "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "members", force: :cascade do |t|
    t.string "lname"
    t.string "fname"
    t.decimal "phone"
    t.string "email"
    t.string "ex_startup_name"
    t.string "dob"
    t.string "ex_startup_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "password_digest"
  end

  create_table "mentors", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.datetime "dob"
    t.decimal "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body"
    t.integer "chatroom_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "startups", force: :cascade do |t|
    t.string "org_name"
    t.string "contact_name"
    t.string "org_email"
    t.decimal "cur_emps"
    t.decimal "phone"
    t.string "description"
    t.string "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.datetime "dob"
    t.decimal "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
