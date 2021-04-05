require "application_system_test_case"

class NhaXuatBansTest < ApplicationSystemTestCase
  setup do
    @nha_xuat_ban = nha_xuat_bans(:one)
  end

  test "visiting the index" do
    visit nha_xuat_bans_url
    assert_selector "h1", text: "Nha Xuat Bans"
  end

  test "creating a Nha xuat ban" do
    visit nha_xuat_bans_url
    click_on "New Nha Xuat Ban"

    fill_in "Dia chi", with: @nha_xuat_ban.dia_chi
    fill_in "Email", with: @nha_xuat_ban.email
    fill_in "Ma nxb", with: @nha_xuat_ban.ma_nxb
    fill_in "Ten nxb", with: @nha_xuat_ban.ten_nxb
    fill_in "Thong tin nguoi dai dien", with: @nha_xuat_ban.thong_tin_nguoi_dai_dien
    click_on "Create Nha xuat ban"

    assert_text "Nha xuat ban was successfully created"
    click_on "Back"
  end

  test "updating a Nha xuat ban" do
    visit nha_xuat_bans_url
    click_on "Edit", match: :first

    fill_in "Dia chi", with: @nha_xuat_ban.dia_chi
    fill_in "Email", with: @nha_xuat_ban.email
    fill_in "Ma nxb", with: @nha_xuat_ban.ma_nxb
    fill_in "Ten nxb", with: @nha_xuat_ban.ten_nxb
    fill_in "Thong tin nguoi dai dien", with: @nha_xuat_ban.thong_tin_nguoi_dai_dien
    click_on "Update Nha xuat ban"

    assert_text "Nha xuat ban was successfully updated"
    click_on "Back"
  end

  test "destroying a Nha xuat ban" do
    visit nha_xuat_bans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nha xuat ban was successfully destroyed"
  end
end
