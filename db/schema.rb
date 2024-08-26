# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_08_26_174851) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circles", force: :cascade do |t|
    t.integer "test_id", null: false
    t.decimal "center_x", precision: 30, scale: 6, null: false
    t.decimal "center_y", precision: 30, scale: 6, null: false
    t.decimal "radius", precision: 30, scale: 6, null: false
    t.boolean "floating_required", default: false, null: false
    t.decimal "min_x", precision: 30, scale: 6
    t.decimal "min_y", precision: 30, scale: 6
    t.decimal "max_x", precision: 30, scale: 6
    t.decimal "max_y", precision: 30, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.decimal "min_x", precision: 30, scale: 6
    t.decimal "min_y", precision: 30, scale: 6
    t.decimal "max_x", precision: 30, scale: 6
    t.decimal "max_y", precision: 30, scale: 6
    t.boolean "floating_required", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
