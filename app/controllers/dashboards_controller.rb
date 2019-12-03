class DashboardsController < ApplicationController
  def show
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed
    params[:team].present? ? @active_team = Team.find(params[:team]) : @active_team = nil
  end

  def conversations
    @users_with_conversation = current_user.friends
  end
end
