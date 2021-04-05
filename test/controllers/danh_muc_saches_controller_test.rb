require "test_helper"

class DanhMucSachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danh_muc_sach = danh_muc_saches(:one)
  end

  test "should get index" do
    get danh_muc_saches_url
    assert_response :success
  end

  test "should get new" do
    get new_danh_muc_sach_url
    assert_response :success
  end

  test "should create danh_muc_sach" do
    assert_difference('DanhMucSach.count') do
      post danh_muc_saches_url, params: { danh_muc_sach: { ma_nxb: @danh_muc_sach.ma_nxb, ma_sach: @danh_muc_sach.ma_sach, ma_tac_gia: @danh_muc_sach.ma_tac_gia, ma_the_loai: @danh_muc_sach.ma_the_loai, nam_xuat_ban: @danh_muc_sach.nam_xuat_ban, ten_sach: @danh_muc_sach.ten_sach } }
    end

    assert_redirected_to danh_muc_sach_url(DanhMucSach.last)
  end

  test "should show danh_muc_sach" do
    get danh_muc_sach_url(@danh_muc_sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_danh_muc_sach_url(@danh_muc_sach)
    assert_response :success
  end

  test "should update danh_muc_sach" do
    patch danh_muc_sach_url(@danh_muc_sach), params: { danh_muc_sach: { ma_nxb: @danh_muc_sach.ma_nxb, ma_sach: @danh_muc_sach.ma_sach, ma_tac_gia: @danh_muc_sach.ma_tac_gia, ma_the_loai: @danh_muc_sach.ma_the_loai, nam_xuat_ban: @danh_muc_sach.nam_xuat_ban, ten_sach: @danh_muc_sach.ten_sach } }
    assert_redirected_to danh_muc_sach_url(@danh_muc_sach)
  end

  test "should destroy danh_muc_sach" do
    assert_difference('DanhMucSach.count', -1) do
      delete danh_muc_sach_url(@danh_muc_sach)
    end

    assert_redirected_to danh_muc_saches_url
  end
end
