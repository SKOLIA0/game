class PlayermatchstatesController < ApplicationController
  before_action :set_playermatchstate, only: %i[ show edit update destroy ]

  # GET /playermatchstates or /playermatchstates.json
  def index
    @playermatchstates = Playermatchstate.all
  end

  # GET /playermatchstates/1 or /playermatchstates/1.json
  def show
  end

  # GET /playermatchstates/new
  def new
    @playermatchstate = Playermatchstate.new
  end

  # GET /playermatchstates/1/edit
  def edit
  end

  # POST /playermatchstates or /playermatchstates.json
  def create
    @playermatchstate = Playermatchstate.new(playermatchstate_params)

    respond_to do |format|
      if @playermatchstate.save
        format.html { redirect_to playermatchstate_url(@playermatchstate), notice: "Playermatchstate was successfully created." }
        format.json { render :show, status: :created, location: @playermatchstate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playermatchstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playermatchstates/1 or /playermatchstates/1.json
  def update
    respond_to do |format|
      if @playermatchstate.update(playermatchstate_params)
        format.html { redirect_to playermatchstate_url(@playermatchstate), notice: "Playermatchstate was successfully updated." }
        format.json { render :show, status: :ok, location: @playermatchstate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playermatchstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playermatchstates/1 or /playermatchstates/1.json
  def destroy
    @playermatchstate.destroy

    respond_to do |format|
      format.html { redirect_to playermatchstates_url, notice: "Playermatchstate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playermatchstate
      @playermatchstate = Playermatchstate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playermatchstate_params
      params.fetch(:playermatchstate, {})
    end
end
