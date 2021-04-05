class DanhMucSachesController < ApplicationController
  before_action :set_danh_muc_sach, only: %i[ show edit update destroy ]

  # GET /danh_muc_saches or /danh_muc_saches.json
  def index
    @danh_muc_saches = DanhMucSach.all
  end

  # GET /danh_muc_saches/1 or /danh_muc_saches/1.json
  def show
  end

  # GET /danh_muc_saches/new
  def new
    @danh_muc_sach = DanhMucSach.new
  end

  # GET /danh_muc_saches/1/edit
  def edit
  end

  # POST /danh_muc_saches or /danh_muc_saches.json
  def create
    @danh_muc_sach = DanhMucSach.new(danh_muc_sach_params)

    respond_to do |format|
      if @danh_muc_sach.save
        format.html { redirect_to @danh_muc_sach, notice: "Danh muc sach was successfully created." }
        format.json { render :show, status: :created, location: @danh_muc_sach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danh_muc_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danh_muc_saches/1 or /danh_muc_saches/1.json
  def update
    respond_to do |format|
      if @danh_muc_sach.update(danh_muc_sach_params)
        format.html { redirect_to @danh_muc_sach, notice: "Danh muc sach was successfully updated." }
        format.json { render :show, status: :ok, location: @danh_muc_sach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danh_muc_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danh_muc_saches/1 or /danh_muc_saches/1.json
  def destroy
    @danh_muc_sach.destroy
    respond_to do |format|
      format.html { redirect_to danh_muc_saches_url, notice: "Danh muc sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danh_muc_sach
      @danh_muc_sach = DanhMucSach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danh_muc_sach_params
      params.require(:danh_muc_sach).permit(:ma_sach, :ten_sach, :ma_tac_gia, :ma_the_loai, :ma_nxb, :nam_xuat_ban)
    end
end
