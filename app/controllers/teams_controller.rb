class TeamsController < ApplicationController
  before_action :set_team, only: %i[show edit update destroy]

  def index
    @teams = Team.all
  end

  def show
    @coach = @team.coach
    @scrims = @team.scrims_against_current_user_team(current_user)
    @scrim = Scrim.new
    @bookings = @team.scrims
    @bookings_dates = @bookings.map do |booking|
      booking.start_game.to_date
    end
    # passer tout cela à la vue
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
