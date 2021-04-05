require "application_system_test_case"

class DanhMucSachesTest < ApplicationSystemTestCase
  setup do
    @danh_muc_sach = danh_muc_saches(:one)
  end

  test "visiting the index" do
    visit danh_muc_saches_url
    assert_selector "h1", text: "Danh Muc Saches"
  end

  test "creating a Danh muc sach" do
    visit danh_muc_saches_url
    click_on "New Danh Muc Sach"

    fill_in "Ma nxb", with: @danh_muc_sach.ma_nxb
    fill_in "Ma sach", with: @danh_muc_sach.ma_sach
    fill_in "Ma tac gia", with: @danh_muc_sach.ma_tac_gia
    fill_in "Ma the loai", with: @danh_muc_sach.ma_the_loai
    fill_in "Nam xuat ban", with: @danh_muc_sach.nam_xuat_ban
    fill_in "Ten sach", with: @danh_muc_sach.ten_sach
    click_on "Create Danh muc sach"

    assert_text "Danh muc sach was successfully created"
    click_on "Back"
  end

  test "updating a Danh muc sach" do
    visit danh_muc_saches_url
    click_on "Edit", match: :first

    fill_in "Ma nxb", with: @danh_muc_sach.ma_nxb
    fill_in "Ma sach", with: @danh_muc_sach.ma_sach
    fill_in "Ma tac gia", with: @danh_muc_sach.ma_tac_gia
    fill_in "Ma the loai", with: @danh_muc_sach.ma_the_loai
    fill_in "Nam xuat ban", with: @danh_muc_sach.nam_xuat_ban
    fill_in "Ten sach", with: @danh_muc_sach.ten_sach
    click_on "Update Danh muc sach"

    assert_text "Danh muc sach was successfully updated"
    click_on "Back"
  end

  test "destroying a Danh muc sach" do
    visit danh_muc_saches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danh muc sach was successfully destroyed"
  end
end
