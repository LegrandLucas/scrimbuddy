class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @infos = @user.scraping_summoner_stats_from_riot_games
  end

  def dashboard
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed
  end
end
