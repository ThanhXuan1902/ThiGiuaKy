class CreateTheLoaiSaches < ActiveRecord::Migration[6.1]
  def change
    create_table :the_loai_saches do |t|
      t.string :ma_the_loai
      t.string :ten_the_loai

      t.timestamps
    end
  end
end
