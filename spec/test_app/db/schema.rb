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

ActiveRecord::Schema.define(version: 20140405142334) do

  create_table "spec_score_api_scores", force: true do |t|
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

  add_index "spec_score_api_scores", ["project_id"], name: "index_spec_score_api_scores_on_project_id"
  add_index "spec_score_api_scores", ["user_id"], name: "index_spec_score_api_scores_on_user_id"

end
