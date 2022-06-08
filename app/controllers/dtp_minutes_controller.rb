class DtpMinutesController < ApplicationController
  before_action :set_dtp_minute, only: %i[ show edit update destroy ]

  # GET /dtp_minutes or /dtp_minutes.json
  def index
    @dtp_minutes = DtpMinute.all
  end

  # GET /dtp_minutes/1 or /dtp_minutes/1.json
  def show
  end

  # GET /dtp_minutes/new
  def new
    @dtp_minute = DtpMinute.new
  end

  # GET /dtp_minutes/1/edit
  def edit
  end

  # POST /dtp_minutes or /dtp_minutes.json
  def create
    @dtp_minute = DtpMinute.new(dtp_minute_params)

    respond_to do |format|
      if @dtp_minute.save
        format.html { redirect_to dtp_minute_url(@dtp_minute), notice: "Dtp minute was successfully created." }
        format.json { render :show, status: :created, location: @dtp_minute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dtp_minute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dtp_minutes/1 or /dtp_minutes/1.json
  def update
    respond_to do |format|
      if @dtp_minute.update(dtp_minute_params)
        format.html { redirect_to dtp_minute_url(@dtp_minute), notice: "Dtp minute was successfully updated." }
        format.json { render :show, status: :ok, location: @dtp_minute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dtp_minute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtp_minutes/1 or /dtp_minutes/1.json
  def destroy
    @dtp_minute.destroy

    respond_to do |format|
      format.html { redirect_to dtp_minutes_url, notice: "Dtp minute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dtp_minute
      @dtp_minute = DtpMinute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dtp_minute_params
      params.fetch(:dtp_minute, {})
    end
end
