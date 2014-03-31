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

ActiveRecord::Schema.define(version: 20140331010918) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "businesses", force: true do |t|
    t.string   "business_line"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["member_id"], name: "index_businesses_on_member_id"

  create_table "contacts", force: true do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "organization"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logos", force: true do |t|
    t.string   "vendor"
    t.string   "level"
    t.boolean  "printed"
    t.date     "sponsor_banner"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "managers", ["business_id"], name: "index_managers_on_business_id"

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "business_id"
    t.string   "phone"
    t.string   "location"
    t.string   "email"
    t.boolean  "new_member"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  add_index "members", ["business_id"], name: "index_members_on_business_id"

  create_table "notifications", force: true do |t|
    t.string   "mail_to"
    t.string   "mail_from"
    t.string   "subject"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "players", force: true do |t|
    t.integer  "foursome"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "shirt_size"
    t.string   "rental_clubs"
    t.text     "comments"
    t.boolean  "dinner_attendance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "member_id"
    t.string   "contact_first"
    t.string   "contact_last"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.integer  "tier_no"
    t.string   "line_of_business"
    t.string   "wla_contact"
    t.string   "contact_first"
    t.string   "contact_last"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact2_first"
    t.string   "contact2_last"
    t.string   "email2"
    t.string   "phone2"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
  end

end
