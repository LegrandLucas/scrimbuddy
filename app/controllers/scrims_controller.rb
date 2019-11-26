class ScrimsController < ApplicationController
  before_action :set_team_host, only: %i[new create]
  before_action :set_scrim, only: %i[edit update destroy]

  def new
    @scrim = Scrim.new
  end

  def create
    @scrim = Scrim.new(scrim_params)
    if @scrim.save
      redirect_to team_path(@team_host)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @scrim.update(scrim_params)
      redirect_to team_path(@team_host)
    else
      render :edit
    end
  end

  def destroy
    @scrim.destroy
    redirect_to team_path(@team_host)
  end

  private

  def set_scrim
    @scrim = Scrim.find(params[:id])
  end

  def scrim_params
    params.require(:scrim).permit(:start_game, :end_game, :result, :confirmation)
  end

  def set_team_host
    @team_host = Team.find(params[:team_host_id])
  end
end
