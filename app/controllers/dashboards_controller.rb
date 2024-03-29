class DashboardsController < ApplicationController
  def show
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed

    return if @next_scrims.empty?

    @first_next_scrim = @next_scrims.first

    params[:team].present? ? @active_team = Team.find(params[:team]) : @active_team = @first_next_scrim.first_team_against(current_user)
  end

  def invitations
    @user        = current_user
    @teams       = Team.all
    @invitations_received = @user.team.invitations_received
    @invitations_sent = @user.team.invitations_sent
  end
end
