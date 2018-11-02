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

ActiveRecord::Schema.define(version: 2018_11_02_044329) do

  create_table "sales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "apn_code"
    t.decimal "r_r_p", precision: 5, scale: 2
    t.decimal "last_buy_price", precision: 5, scale: 2
    t.string "item_description"
    t.string "author"
    t.string "product_category"
    t.integer "actual_stock_on_hand"
    t.date "trans_date"
    t.string "trans_time"
    t.string "trans_document_number"
    t.string "trans_reference_number"
    t.integer "trans_quantity"
    t.decimal "total_extax_value", precision: 5, scale: 2
    t.decimal "total_tax", precision: 5, scale: 2
    t.decimal "discount_given", precision: 3, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
