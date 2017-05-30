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

ActiveRecord::Schema.define(version: 20170530163627) do

  create_table "clients", force: :cascade do |t|
    t.integer  "rating"
    t.string   "company_name"
    t.string   "admin_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "profile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "coders", force: :cascade do |t|
    t.integer  "rating"
    t.text     "skills"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "languages"
    t.string   "bootcamp"
    t.text     "profile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.boolean  "in_progess"
    t.boolean  "completed"
    t.text     "description"
    t.decimal  "amount"
    t.integer  "coder_id"
    t.integer  "client_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["client_id"], name: "index_jobs_on_client_id"
    t.index ["coder_id"], name: "index_jobs_on_coder_id"
  end

end
