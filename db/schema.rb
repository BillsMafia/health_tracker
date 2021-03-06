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

ActiveRecord::Schema.define(version: 20160303220852) do

  create_table "calories_consumeds", force: :cascade do |t|
    t.decimal  "calories_consumed", precision: 6, scale: 2
    t.date     "date_consumed"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises_performeds", force: :cascade do |t|
    t.integer  "exercise_type_id"
    t.decimal  "calories_burned",  precision: 6, scale: 2
    t.date     "date_burned"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "steps_takens", force: :cascade do |t|
    t.integer  "steps_taken"
    t.date     "date_walked"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.decimal  "weight",       precision: 5, scale: 2
    t.date     "date_weighed"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
