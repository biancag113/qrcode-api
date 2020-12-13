class QrcsController < ApplicationController
  before_action :set_qrc, only: [:show, :update, :destroy]

  # GET /qrcs
  def index
    @qrcs = Qrc.all

    render json: @qrcs
  end

  # GET /qrcs/1
  def show
    render json: @qrc
  end

  # POST /qrcs
  def create
    @qrc = Qrc.new(qrc_params)

    if @qrc.save
      render json: @qrc, status: :created, location: @qrc
    else
      render json: @qrc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /qrcs/1
  def update
    if @qrc.update(qrc_params)
      render json: @qrc
    else
      render json: @qrc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /qrcs/1
  def destroy
    @qrc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qrc
      @qrc = Qrc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qrc_params
      params.require(:qrc).permit(:num, :discount)
    end
end
