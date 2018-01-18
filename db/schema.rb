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

ActiveRecord::Schema.define(version: 20180118085037) do

  create_table "departent_employees", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.integer "employee_id"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_departent_employees_on_department_id"
    t.index ["employee_id"], name: "index_departent_employees_on_employee_id"
  end

  create_table "department_managers", force: :cascade do |t|
    t.integer "department_id"
    t.integer "employee_id"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_department_managers_on_department_id"
    t.index ["employee_id"], name: "index_department_managers_on_employee_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "dept_no"
    t.string "dept_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_emps", force: :cascade do |t|
    t.date "from"
    t.date "to_date"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_dept_emps_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.date "birth_date"
    t.string "first_name"
    t.string "lastname"
    t.string "gender"
    t.date "hire_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "employee_id"
    t.string "salary"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "itle"
    t.date "from_date"
    t.date "to_date"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_titles_on_employee_id"
  end

end
