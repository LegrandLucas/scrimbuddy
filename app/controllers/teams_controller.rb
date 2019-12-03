class TeamsController < ApplicationController
  before_action :set_team, only: %i[show edit update destroy]

  def index
    @teams = Team.all
  end

  def show
    @team_user    = current_user.team
    @coach        = @team.coach
    @scrims       = @team.scrims_against_current_user_team(current_user)
    @scrim        = Scrim.new
    # @scrims_dates = @team.scrims.map { |scrim| scrim.start_game } + @team_user.scrims.map { |scrim| scrim.start_game }
    # Refacto by Alex
    @scrims_dates = @team.scrims.map(&:start_game) + @team_user.scrims.map(&:start_game)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @team.update(team_params)
      redirect_to team_path(team)
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :league, :country, images: [], logo: [])
  end
end
