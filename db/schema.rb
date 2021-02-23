# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_121456) do

  create_table "alumnis", force: :cascade do |t|
    t.date "from"
    t.datetime "to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_alumnis_on_user_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.date "date"
    t.text "present"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_attendances_on_event_id"
  end

  create_table "enrollment_forms", force: :cascade do |t|
    t.datetime "middle_name"
    t.text "last_name"
    t.integer "branch"
    t.integer "reg_no"
    t.string "roll_no"
    t.integer "semester"
    t.string "blood_group"
    t.string "nationality"
    t.date "dob"
    t.text "address"
    t.string "state"
    t.integer "pincode"
    t.string "parent_name"
    t.integer "parent_phone"
    t.string "parent_email"
    t.integer "phone"
    t.string "email_id"
    t.integer "language"
    t.string "highest_education"
    t.string "marks"
    t.integer "year_of_study"
    t.text "achievement_ncc"
    t.text "achievement_sport"
    t.text "achievement_art"
    t.text "achievement_other"
    t.string "fill_place"
    t.datetime "fill_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "signature_id"
    t.integer "document_id"
    t.index ["document_id"], name: "index_enrollment_forms_on_document_id"
    t.index ["signature_id"], name: "index_enrollment_forms_on_signature_id"
    t.index ["user_id"], name: "index_enrollment_forms_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "tagline"
    t.text "description"
    t.string "location"
    t.string "spoc"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "attendance_id"
    t.index ["attendance_id"], name: "index_events_on_attendance_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "heading"
    t.text "message"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "text"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "facebook"
    t.string "linkedin"
    t.string "instagram"
    t.string "email"
    t.text "statement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_testimonials_on_user_id"
  end

  create_table "uploads", force: :cascade do |t|
    t.string "document"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.integer "roll_no"
    t.integer "designation"
    t.integer "staff"
    t.integer "permission_level"
    t.boolean "alumni"
    t.string "email_official"
    t.integer "phone_official"
    t.string "blood_group"
    t.integer "enrollment_form_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["enrollment_form_id"], name: "index_users_on_enrollment_form_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alumnis", "users"
  add_foreign_key "attendances", "events"
  add_foreign_key "enrollment_forms", "uploads", column: "document_id"
  add_foreign_key "enrollment_forms", "uploads", column: "signature_id"
  add_foreign_key "enrollment_forms", "users"
  add_foreign_key "events", "attendances"
  add_foreign_key "posts", "users"
  add_foreign_key "testimonials", "users"
  add_foreign_key "users", "enrollment_forms"
end
