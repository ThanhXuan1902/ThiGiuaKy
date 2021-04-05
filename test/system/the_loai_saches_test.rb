require "application_system_test_case"

class TheLoaiSachesTest < ApplicationSystemTestCase
  setup do
    @the_loai_sach = the_loai_saches(:one)
  end

  test "visiting the index" do
    visit the_loai_saches_url
    assert_selector "h1", text: "The Loai Saches"
  end

  test "creating a The loai sach" do
    visit the_loai_saches_url
    click_on "New The Loai Sach"

    fill_in "Ma the loai", with: @the_loai_sach.ma_the_loai
    fill_in "Ten the loai", with: @the_loai_sach.ten_the_loai
    click_on "Create The loai sach"

    assert_text "The loai sach was successfully created"
    click_on "Back"
  end

  test "updating a The loai sach" do
    visit the_loai_saches_url
    click_on "Edit", match: :first

    fill_in "Ma the loai", with: @the_loai_sach.ma_the_loai
    fill_in "Ten the loai", with: @the_loai_sach.ten_the_loai
    click_on "Update The loai sach"

    assert_text "The loai sach was successfully updated"
    click_on "Back"
  end

  test "destroying a The loai sach" do
    visit the_loai_saches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "The loai sach was successfully destroyed"
  end
end
