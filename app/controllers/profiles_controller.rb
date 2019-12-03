class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @total_match = @user[:season_wins] + @user[:season_losses]
    @win_rate = (@user[:season_wins] * 100) / @total_match
    @most_used_champions = @user[:most_used_champions].split(" ")
  end

  def dashboard
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed
    params[:team].present? ? @active_team = Team.find(params[:team]) : @active_team = nil
  end
end
