class TeamParticipationsController < ApplicationController
  before_action :set_team_participation, only: %i[ show edit update destroy ]

  # GET /team_participations or /team_participations.json
  def index
    @team_participations = TeamParticipation.all
  end

  # GET /team_participations/1 or /team_participations/1.json
  def show
  end

  # GET /team_participations/new
  def new
    @team_participation = TeamParticipation.new
  end

  # GET /team_participations/1/edit
  def edit
  end

  # POST /team_participations or /team_participations.json
  def create
    @team_participation = TeamParticipation.new(team_participation_params)

    respond_to do |format|
      if @team_participation.save
        format.html { redirect_to team_participation_url(@team_participation), notice: "Team participation was successfully created." }
        format.json { render :show, status: :created, location: @team_participation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_participations/1 or /team_participations/1.json
  def update
    respond_to do |format|
      if @team_participation.update(team_participation_params)
        format.html { redirect_to team_participation_url(@team_participation), notice: "Team participation was successfully updated." }
        format.json { render :show, status: :ok, location: @team_participation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_participations/1 or /team_participations/1.json
  def destroy
    @team_participation.destroy

    respond_to do |format|
      format.html { redirect_to team_participations_url, notice: "Team participation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_participation
      @team_participation = TeamParticipation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_participation_params
      params.fetch(:team_participation, {})
    end
end
