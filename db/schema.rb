# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150501201114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "option_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.integer  "answer_option_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "challenge_name"
    t.integer  "challenging_user_id"
    t.integer  "challenged_user_id"
    t.string   "status"
    t.string   "question_ids"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "winner"
    t.text     "question_array",      default: [],              array: true
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id", using: :btree

  create_table "user_answers", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "answer_option_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "points"
    t.integer  "correct_answers"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_tasks", ["task_id"], name: "index_user_tasks_on_task_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status"
    t.integer  "total_points"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
