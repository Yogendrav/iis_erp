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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140514075308) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "holidays", :force => true do |t|
    t.datetime "date"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leaves", :force => true do |t|
    t.datetime "date_from"
    t.datetime "date_to"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "leave_status"
    t.integer  "user_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "emp_name"
    t.string   "image"
    t.integer  "emp_id"
    t.string   "email"
    t.string   "designation"
    t.string   "department"
    t.string   "date_of_join"
    t.string   "notice_period"
    t.string   "commitment_period"
    t.string   "pan_no"
    t.string   "pf_no"
    t.string   "esi_no"
    t.integer  "bank_account"
    t.integer  "experience_at_joining"
    t.string   "exp_in_iis"
    t.string   "total_exp"
    t.string   "increament"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "dob"
    t.text     "current_address"
    t.text     "permanent_address"
    t.string   "gender"
    t.integer  "contact_no"
    t.integer  "mobile_no1"
    t.integer  "mobile_no2"
    t.string   "personal_email"
    t.string   "blood_group"
    t.string   "highest_education"
    t.string   "second_highest_education"
    t.string   "language"
    t.string   "primary_skills"
    t.string   "secondary_skills"
    t.string   "marrital_status"
    t.string   "spouse_name"
    t.datetime "date_of_aniversary"
    t.string   "passport_no"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                    :default => "", :null => false
    t.string   "encrypted_password",       :default => "", :null => false
    t.string   "emp_name"
    t.string   "image"
    t.integer  "emp_id"
    t.string   "designation"
    t.string   "department"
    t.string   "date_of_join"
    t.string   "notice_period"
    t.string   "commitment_period"
    t.string   "pan_no"
    t.string   "pf_no"
    t.string   "esi_no"
    t.integer  "bank_account"
    t.integer  "experience_at_joining"
    t.string   "exp_in_iis"
    t.string   "total_exp"
    t.string   "increament"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "dob"
    t.text     "current_address"
    t.text     "permanent_address"
    t.string   "gender"
    t.integer  "contact_no"
    t.integer  "mobile_no1"
    t.integer  "mobile_no2"
    t.string   "personal_email"
    t.string   "blood_group"
    t.string   "highest_education"
    t.string   "second_highest_education"
    t.string   "language"
    t.string   "primary_skills"
    t.string   "secondary_skills"
    t.string   "marrital_status"
    t.string   "spouse_name"
    t.datetime "date_of_aniversary"
    t.string   "passport_no"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
