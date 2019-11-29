class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @infos = @user.scraping_summoner_stats_from_riot_games
  end
end
