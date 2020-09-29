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

ActiveRecord::Schema.define(version: 2020_07_01_112041) do

  create_table "assets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "symbol"
    t.string "name"
    t.string "series"
    t.date "date_of_listing"
    t.integer "paid_up_value"
    t.string "isin_number"
    t.integer "face_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trade_session_id", null: false
    t.bigint "trade_id", null: false
    t.text "message"
    t.column "type", "enum('ionitial_trading_strategy','conclusion','mental_state','misclinious')", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trade_id"], name: "index_comments_on_trade_id"
    t.index ["trade_session_id"], name: "index_comments_on_trade_session_id"
  end

  create_table "fund_transctions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.bigint "trade_session_id", null: false
    t.bigint "trade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trade_id"], name: "index_fund_transctions_on_trade_id"
    t.index ["trade_session_id"], name: "index_fund_transctions_on_trade_session_id"
  end

  create_table "trade_sessions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "asset_id", null: false
    t.timestamp "started_at"
    t.timestamp "closed_at"
    t.boolean "is_active"
    t.column "type", "enum('trade','deposit','withdrawal')", default: "trade", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asset_id"], name: "index_trade_sessions_on_asset_id"
  end

  create_table "trades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trade_session_id", null: false
    t.bigint "asset_id", null: false
    t.float "cost_price"
    t.float "selling_price"
    t.float "stop_loss"
    t.float "target"
    t.column "type", "enum('buy','sell')", null: false
    t.integer "quantity"
    t.integer "indicated_quantity"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asset_id"], name: "index_trades_on_asset_id"
    t.index ["trade_session_id"], name: "index_trades_on_trade_session_id"
  end

  add_foreign_key "comments", "trade_sessions"
  add_foreign_key "comments", "trades"
  add_foreign_key "fund_transctions", "trade_sessions"
  add_foreign_key "fund_transctions", "trades"
  add_foreign_key "trade_sessions", "assets"
  add_foreign_key "trades", "assets"
  add_foreign_key "trades", "trade_sessions"
end
