class CreateNhaXuatBans < ActiveRecord::Migration[6.1]
  def change
    create_table :nha_xuat_bans do |t|
      t.string :ma_nxb
      t.string :ten_nxb
      t.string :dia_chi
      t.string :email
      t.text :thong_tin_nguoi_dai_dien

      t.timestamps
    end
  end
end
