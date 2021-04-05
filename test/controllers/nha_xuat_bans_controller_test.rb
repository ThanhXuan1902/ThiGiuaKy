require "test_helper"

class NhaXuatBansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nha_xuat_ban = nha_xuat_bans(:one)
  end

  test "should get index" do
    get nha_xuat_bans_url
    assert_response :success
  end

  test "should get new" do
    get new_nha_xuat_ban_url
    assert_response :success
  end

  test "should create nha_xuat_ban" do
    assert_difference('NhaXuatBan.count') do
      post nha_xuat_bans_url, params: { nha_xuat_ban: { dia_chi: @nha_xuat_ban.dia_chi, email: @nha_xuat_ban.email, ma_nxb: @nha_xuat_ban.ma_nxb, ten_nxb: @nha_xuat_ban.ten_nxb, thong_tin_nguoi_dai_dien: @nha_xuat_ban.thong_tin_nguoi_dai_dien } }
    end

    assert_redirected_to nha_xuat_ban_url(NhaXuatBan.last)
  end

  test "should show nha_xuat_ban" do
    get nha_xuat_ban_url(@nha_xuat_ban)
    assert_response :success
  end

  test "should get edit" do
    get edit_nha_xuat_ban_url(@nha_xuat_ban)
    assert_response :success
  end

  test "should update nha_xuat_ban" do
    patch nha_xuat_ban_url(@nha_xuat_ban), params: { nha_xuat_ban: { dia_chi: @nha_xuat_ban.dia_chi, email: @nha_xuat_ban.email, ma_nxb: @nha_xuat_ban.ma_nxb, ten_nxb: @nha_xuat_ban.ten_nxb, thong_tin_nguoi_dai_dien: @nha_xuat_ban.thong_tin_nguoi_dai_dien } }
    assert_redirected_to nha_xuat_ban_url(@nha_xuat_ban)
  end

  test "should destroy nha_xuat_ban" do
    assert_difference('NhaXuatBan.count', -1) do
      delete nha_xuat_ban_url(@nha_xuat_ban)
    end

    assert_redirected_to nha_xuat_bans_url
  end
end
