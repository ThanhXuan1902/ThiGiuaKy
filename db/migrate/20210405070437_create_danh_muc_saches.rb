class CreateDanhMucSaches < ActiveRecord::Migration[6.1]
  def change
    create_table :danh_muc_saches do |t|
      t.integer :ma_sach
      t.string :ten_sach
      t.string :ma_tac_gia
      t.string :ma_the_loai
      t.string :ma_nxb
      t.integer :nam_xuat_ban

      t.timestamps
    end
  end
end
