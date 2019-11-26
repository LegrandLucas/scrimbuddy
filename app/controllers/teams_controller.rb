class TeamsController < ApplicationController
  before_action :set_team, only: %i[show edit update destroy]

  def index
    @teams = Team.all
  end

  def show; end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @team.update(team_params)
  end

  def destroy
    @team.destroy
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :league, :country, images: [])
  end
end
