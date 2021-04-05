class DanhMucTacGiaController < ApplicationController
  before_action :set_danh_muc_tac_gium, only: %i[ show edit update destroy ]

  # GET /danh_muc_tac_gia or /danh_muc_tac_gia.json
  def index
    @danh_muc_tac_gia = DanhMucTacGium.all
  end

  # GET /danh_muc_tac_gia/1 or /danh_muc_tac_gia/1.json
  def show
  end

  # GET /danh_muc_tac_gia/new
  def new
    @danh_muc_tac_gium = DanhMucTacGium.new
  end

  # GET /danh_muc_tac_gia/1/edit
  def edit
  end

  # POST /danh_muc_tac_gia or /danh_muc_tac_gia.json
  def create
    @danh_muc_tac_gium = DanhMucTacGium.new(danh_muc_tac_gium_params)

    respond_to do |format|
      if @danh_muc_tac_gium.save
        format.html { redirect_to @danh_muc_tac_gium, notice: "Danh muc tac gium was successfully created." }
        format.json { render :show, status: :created, location: @danh_muc_tac_gium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danh_muc_tac_gium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danh_muc_tac_gia/1 or /danh_muc_tac_gia/1.json
  def update
    respond_to do |format|
      if @danh_muc_tac_gium.update(danh_muc_tac_gium_params)
        format.html { redirect_to @danh_muc_tac_gium, notice: "Danh muc tac gium was successfully updated." }
        format.json { render :show, status: :ok, location: @danh_muc_tac_gium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danh_muc_tac_gium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danh_muc_tac_gia/1 or /danh_muc_tac_gia/1.json
  def destroy
    @danh_muc_tac_gium.destroy
    respond_to do |format|
      format.html { redirect_to danh_muc_tac_gia_url, notice: "Danh muc tac gium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danh_muc_tac_gium
      @danh_muc_tac_gium = DanhMucTacGium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danh_muc_tac_gium_params
      params.require(:danh_muc_tac_gium).permit(:ma_tac_gia, :ten_tac_gia, :website, :ghi_chu)
    end
end
