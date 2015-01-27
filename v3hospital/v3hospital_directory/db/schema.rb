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

ActiveRecord::Schema.define(version: 20150127030316) do

  create_table "doctors", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "specialty",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "doctorable_id",   limit: 4
    t.integer  "doctorable_type", limit: 4
  end

  create_table "facilities", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.integer  "zip",        limit: 4
  end

  create_table "mds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meds", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 255
    t.string   "dose",        limit: 255
    t.string   "description", limit: 255
  end

  create_table "patient_meds", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "patient_id", limit: 4
    t.integer  "med_id",     limit: 4
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
    t.string   "d_o_b",       limit: 255
    t.string   "description", limit: 255
    t.boolean  "gender",      limit: 1
    t.string   "blood_type",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "facility_id", limit: 4
  end

end
