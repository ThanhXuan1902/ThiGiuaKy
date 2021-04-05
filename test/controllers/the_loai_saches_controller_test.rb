require "test_helper"

class TheLoaiSachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @the_loai_sach = the_loai_saches(:one)
  end

  test "should get index" do
    get the_loai_saches_url
    assert_response :success
  end

  test "should get new" do
    get new_the_loai_sach_url
    assert_response :success
  end

  test "should create the_loai_sach" do
    assert_difference('TheLoaiSach.count') do
      post the_loai_saches_url, params: { the_loai_sach: { ma_the_loai: @the_loai_sach.ma_the_loai, ten_the_loai: @the_loai_sach.ten_the_loai } }
    end

    assert_redirected_to the_loai_sach_url(TheLoaiSach.last)
  end

  test "should show the_loai_sach" do
    get the_loai_sach_url(@the_loai_sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_the_loai_sach_url(@the_loai_sach)
    assert_response :success
  end

  test "should update the_loai_sach" do
    patch the_loai_sach_url(@the_loai_sach), params: { the_loai_sach: { ma_the_loai: @the_loai_sach.ma_the_loai, ten_the_loai: @the_loai_sach.ten_the_loai } }
    assert_redirected_to the_loai_sach_url(@the_loai_sach)
  end

  test "should destroy the_loai_sach" do
    assert_difference('TheLoaiSach.count', -1) do
      delete the_loai_sach_url(@the_loai_sach)
    end

    assert_redirected_to the_loai_saches_url
  end
end
