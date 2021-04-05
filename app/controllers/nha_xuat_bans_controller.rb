class NhaXuatBansController < ApplicationController
  before_action :set_nha_xuat_ban, only: %i[ show edit update destroy ]

  # GET /nha_xuat_bans or /nha_xuat_bans.json
  def index
    @nha_xuat_bans = NhaXuatBan.all
  end

  # GET /nha_xuat_bans/1 or /nha_xuat_bans/1.json
  def show
  end

  # GET /nha_xuat_bans/new
  def new
    @nha_xuat_ban = NhaXuatBan.new
  end

  # GET /nha_xuat_bans/1/edit
  def edit
  end

  # POST /nha_xuat_bans or /nha_xuat_bans.json
  def create
    @nha_xuat_ban = NhaXuatBan.new(nha_xuat_ban_params)

    respond_to do |format|
      if @nha_xuat_ban.save
        format.html { redirect_to @nha_xuat_ban, notice: "Nha xuat ban was successfully created." }
        format.json { render :show, status: :created, location: @nha_xuat_ban }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nha_xuat_ban.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nha_xuat_bans/1 or /nha_xuat_bans/1.json
  def update
    respond_to do |format|
      if @nha_xuat_ban.update(nha_xuat_ban_params)
        format.html { redirect_to @nha_xuat_ban, notice: "Nha xuat ban was successfully updated." }
        format.json { render :show, status: :ok, location: @nha_xuat_ban }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nha_xuat_ban.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nha_xuat_bans/1 or /nha_xuat_bans/1.json
  def destroy
    @nha_xuat_ban.destroy
    respond_to do |format|
      format.html { redirect_to nha_xuat_bans_url, notice: "Nha xuat ban was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nha_xuat_ban
      @nha_xuat_ban = NhaXuatBan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nha_xuat_ban_params
      params.require(:nha_xuat_ban).permit(:ma_nxb, :ten_nxb, :dia_chi, :email, :thong_tin_nguoi_dai_dien)
    end
end
