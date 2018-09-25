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

ActiveRecord::Schema.define(version: 20180918123656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.string   "title"
    t.text     "message"
    t.string   "picture"
    t.string   "logo"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "active_admin_managed_resources", force: :cascade do |t|
    t.string "class_name", null: false
    t.string "action",     null: false
    t.string "name"
    t.index ["class_name", "action", "name"], name: "active_admin_managed_resources_index", unique: true, using: :btree
  end

  create_table "active_admin_permissions", force: :cascade do |t|
    t.integer "managed_resource_id",                       null: false
    t.integer "role",                limit: 2, default: 0, null: false
    t.integer "state",               limit: 2, default: 0, null: false
    t.index ["managed_resource_id", "role"], name: "active_admin_permissions_index", unique: true, using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "role",                   limit: 2, default: 0,  null: false
    t.string   "auth_token"
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "banners", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "break_fasts", force: :cascade do |t|
    t.integer  "food_id"
    t.string   "message"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_break_fasts_on_admin_user_id", using: :btree
    t.index ["food_id"], name: "index_break_fasts_on_food_id", using: :btree
  end

  create_table "dinners", force: :cascade do |t|
    t.integer  "food_id"
    t.string   "message"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_dinners_on_admin_user_id", using: :btree
    t.index ["food_id"], name: "index_dinners_on_food_id", using: :btree
  end

  create_table "foods", force: :cascade do |t|
    t.string   "key_label"
    t.string   "image"
    t.string   "name"
    t.string   "discription"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.integer  "service_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "project_id"
    t.boolean  "recomended",         default: false
    t.index ["project_id"], name: "index_galleries_on_project_id", using: :btree
    t.index ["service_id"], name: "index_galleries_on_service_id", using: :btree
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "mobile"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.integer  "food_id"
    t.string   "message"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_lunches_on_admin_user_id", using: :btree
    t.index ["food_id"], name: "index_lunches_on_food_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "location"
    t.string   "customer_name"
    t.string   "customer_contact"
    t.string   "customer_other_details"
    t.string   "project_budget_details"
    t.string   "discription"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "social_links", force: :cascade do |t|
    t.string   "link_url"
    t.string   "link_name"
    t.string   "link_icon_class"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "designation"
    t.string   "introduction"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "description"
    t.string   "author"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "break_fasts", "admin_users"
  add_foreign_key "break_fasts", "foods"
  add_foreign_key "dinners", "admin_users"
  add_foreign_key "dinners", "foods"
  add_foreign_key "galleries", "projects"
  add_foreign_key "galleries", "services"
  add_foreign_key "lunches", "admin_users"
  add_foreign_key "lunches", "foods"
end
