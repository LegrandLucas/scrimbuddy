class DashboardsController < ApplicationController
  def show
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed
    params[:team].present? ? @active_team = Team.find(params[:team]) : @active_team = nil
  end

  def invitations
    @user        = current_user
    @teams       = Team.all
    @invitations_received = @user.team.invitations_received
    @invitations_sent = @user.team.invitations_sent
  end
end
