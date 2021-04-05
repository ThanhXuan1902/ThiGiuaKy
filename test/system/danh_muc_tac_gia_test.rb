require "application_system_test_case"

class DanhMucTacGiaTest < ApplicationSystemTestCase
  setup do
    @danh_muc_tac_gium = danh_muc_tac_gia(:one)
  end

  test "visiting the index" do
    visit danh_muc_tac_gia_url
    assert_selector "h1", text: "Danh Muc Tac Gia"
  end

  test "creating a Danh muc tac gium" do
    visit danh_muc_tac_gia_url
    click_on "New Danh Muc Tac Gium"

    fill_in "Ghi chu", with: @danh_muc_tac_gium.ghi_chu
    fill_in "Ma tac gia", with: @danh_muc_tac_gium.ma_tac_gia
    fill_in "Ten tac gia", with: @danh_muc_tac_gium.ten_tac_gia
    fill_in "Website", with: @danh_muc_tac_gium.website
    click_on "Create Danh muc tac gium"

    assert_text "Danh muc tac gium was successfully created"
    click_on "Back"
  end

  test "updating a Danh muc tac gium" do
    visit danh_muc_tac_gia_url
    click_on "Edit", match: :first

    fill_in "Ghi chu", with: @danh_muc_tac_gium.ghi_chu
    fill_in "Ma tac gia", with: @danh_muc_tac_gium.ma_tac_gia
    fill_in "Ten tac gia", with: @danh_muc_tac_gium.ten_tac_gia
    fill_in "Website", with: @danh_muc_tac_gium.website
    click_on "Update Danh muc tac gium"

    assert_text "Danh muc tac gium was successfully updated"
    click_on "Back"
  end

  test "destroying a Danh muc tac gium" do
    visit danh_muc_tac_gia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danh muc tac gium was successfully destroyed"
  end
end
