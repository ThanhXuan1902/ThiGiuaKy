require "test_helper"

class DanhMucTacGiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danh_muc_tac_gium = danh_muc_tac_gia(:one)
  end

  test "should get index" do
    get danh_muc_tac_gia_url
    assert_response :success
  end

  test "should get new" do
    get new_danh_muc_tac_gium_url
    assert_response :success
  end

  test "should create danh_muc_tac_gium" do
    assert_difference('DanhMucTacGium.count') do
      post danh_muc_tac_gia_url, params: { danh_muc_tac_gium: { ghi_chu: @danh_muc_tac_gium.ghi_chu, ma_tac_gia: @danh_muc_tac_gium.ma_tac_gia, ten_tac_gia: @danh_muc_tac_gium.ten_tac_gia, website: @danh_muc_tac_gium.website } }
    end

    assert_redirected_to danh_muc_tac_gium_url(DanhMucTacGium.last)
  end

  test "should show danh_muc_tac_gium" do
    get danh_muc_tac_gium_url(@danh_muc_tac_gium)
    assert_response :success
  end

  test "should get edit" do
    get edit_danh_muc_tac_gium_url(@danh_muc_tac_gium)
    assert_response :success
  end

  test "should update danh_muc_tac_gium" do
    patch danh_muc_tac_gium_url(@danh_muc_tac_gium), params: { danh_muc_tac_gium: { ghi_chu: @danh_muc_tac_gium.ghi_chu, ma_tac_gia: @danh_muc_tac_gium.ma_tac_gia, ten_tac_gia: @danh_muc_tac_gium.ten_tac_gia, website: @danh_muc_tac_gium.website } }
    assert_redirected_to danh_muc_tac_gium_url(@danh_muc_tac_gium)
  end

  test "should destroy danh_muc_tac_gium" do
    assert_difference('DanhMucTacGium.count', -1) do
      delete danh_muc_tac_gium_url(@danh_muc_tac_gium)
    end

    assert_redirected_to danh_muc_tac_gia_url
  end
end
