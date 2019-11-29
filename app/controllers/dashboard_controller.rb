class DashboardController < ApplicationController
  def show
    @teams = Team.all
    @user = User.find(params[:id])
    @next_scrims = @user.team.next_scrims_confirmed
  end

  def notification

  end

  def agenda

  end
end
