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

ActiveRecord::Schema.define(version: 20140410193422) do

  create_table "scores", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.float    "duration",   default: 0.0
    t.integer  "specs",      default: 0
    t.integer  "succeeded",  default: 0
    t.integer  "failed",     default: 0
    t.integer  "pending",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["project_id"], name: "index_scores_on_project_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "spec_score_api_projects", force: true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.integer  "count_specs"
    t.integer  "count_succeeded"
    t.integer  "count_failures"
    t.integer  "count_pending"
    t.float    "duration"
    t.integer  "count_of_scores"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spec_score_api_projects", ["name"], name: "index_spec_score_api_projects_on_name"
  add_index "spec_score_api_projects", ["owner_id"], name: "index_spec_score_api_projects_on_owner_id"
  add_index "spec_score_api_projects", ["token"], name: "index_spec_score_api_projects_on_token"

  create_table "spec_score_api_teammates", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spec_score_api_teammates", ["project_id"], name: "index_spec_score_api_teammates_on_project_id"
  add_index "spec_score_api_teammates", ["user_id"], name: "index_spec_score_api_teammates_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "nick"
    t.integer  "count_specs",      default: 0
    t.integer  "count_succeeded",  default: 0
    t.integer  "count_failures",   default: 0
    t.float    "overall_duration", default: 0.0
    t.integer  "count_scores",     default: 0
    t.string   "api_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["api_token"], name: "index_users_on_api_token"
  add_index "users", ["email"], name: "index_users_on_email"

end
