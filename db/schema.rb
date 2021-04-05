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

ActiveRecord::Schema.define(version: 2021_04_05_070437) do

  create_table "danh_muc_saches", force: :cascade do |t|
    t.integer "ma_sach"
    t.string "ten_sach"
    t.string "ma_tac_gia"
    t.string "ma_the_loai"
    t.string "ma_nxb"
    t.integer "nam_xuat_ban"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "danh_muc_tac_gia", force: :cascade do |t|
    t.string "ma_tac_gia"
    t.string "ten_tac_gia"
    t.string "website"
    t.text "ghi_chu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nha_xuat_bans", force: :cascade do |t|
    t.string "ma_nxb"
    t.string "ten_nxb"
    t.string "dia_chi"
    t.string "email"
    t.text "thong_tin_nguoi_dai_dien"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "the_loai_saches", force: :cascade do |t|
    t.string "ma_the_loai"
    t.string "ten_the_loai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
