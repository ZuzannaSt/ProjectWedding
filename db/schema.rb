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

ActiveRecord::Schema.define(version: 20140618205934) do

  create_table "collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "description"
  end

  create_table "colors", force: true do |t|
    t.string   "color_name"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coloristic_file_name"
    t.string   "coloristic_content_type"
    t.integer  "coloristic_file_size"
    t.datetime "coloristic_updated_at"
  end

  add_index "colors", ["invitation_id"], name: "index_colors_on_invitation_id"

  create_table "elements", force: true do |t|
    t.string   "name"
    t.string   "element_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", force: true do |t|
    t.string   "name"
    t.integer  "collection_id"
    t.integer  "colors_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tags_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "invitations", ["collection_id"], name: "index_invitations_on_collection_id"
  add_index "invitations", ["colors_id"], name: "index_invitations_on_colors_id"

  create_table "invitations_colors", id: false, force: true do |t|
    t.integer "color_id"
    t.integer "invitation_id"
  end

  add_index "invitations_colors", ["invitation_id", "color_id"], name: "index_invitations_colors_on_invitation_id_and_color_id", unique: true

  create_table "invitations_elements", force: true do |t|
    t.integer "invitation_id"
    t.integer "element_id"
  end

  add_index "invitations_elements", ["invitation_id", "element_id"], name: "index_invitations_elements_on_invitation_id_and_element_id", unique: true

  create_table "invitations_tags", id: false, force: true do |t|
    t.integer "invitation_id"
    t.integer "tag_id"
  end

  add_index "invitations_tags", ["invitation_id", "tag_id"], name: "index_invitations_tags_on_invitation_id_and_tag_id", unique: true

  create_table "photos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "invitation_id"
  end

  create_table "tags", force: true do |t|
    t.string   "tag_name"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
