class TheLoaiSachesController < ApplicationController
  before_action :set_the_loai_sach, only: %i[ show edit update destroy ]

  # GET /the_loai_saches or /the_loai_saches.json
  def index
    @the_loai_saches = TheLoaiSach.all
  end

  # GET /the_loai_saches/1 or /the_loai_saches/1.json
  def show
  end

  # GET /the_loai_saches/new
  def new
    @the_loai_sach = TheLoaiSach.new
  end

  # GET /the_loai_saches/1/edit
  def edit
  end

  # POST /the_loai_saches or /the_loai_saches.json
  def create
    @the_loai_sach = TheLoaiSach.new(the_loai_sach_params)

    respond_to do |format|
      if @the_loai_sach.save
        format.html { redirect_to @the_loai_sach, notice: "The loai sach was successfully created." }
        format.json { render :show, status: :created, location: @the_loai_sach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @the_loai_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_loai_saches/1 or /the_loai_saches/1.json
  def update
    respond_to do |format|
      if @the_loai_sach.update(the_loai_sach_params)
        format.html { redirect_to @the_loai_sach, notice: "The loai sach was successfully updated." }
        format.json { render :show, status: :ok, location: @the_loai_sach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @the_loai_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_loai_saches/1 or /the_loai_saches/1.json
  def destroy
    @the_loai_sach.destroy
    respond_to do |format|
      format.html { redirect_to the_loai_saches_url, notice: "The loai sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_loai_sach
      @the_loai_sach = TheLoaiSach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def the_loai_sach_params
      params.require(:the_loai_sach).permit(:ma_the_loai, :ten_the_loai)
    end
end
