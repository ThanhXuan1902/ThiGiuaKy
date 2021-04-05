class CreateDanhMucTacGia < ActiveRecord::Migration[6.1]
  def change
    create_table :danh_muc_tac_gia do |t|
      t.string :ma_tac_gia
      t.string :ten_tac_gia
      t.string :website
      t.text :ghi_chu

      t.timestamps
    end
  end
end
