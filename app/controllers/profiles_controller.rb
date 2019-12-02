class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def dashboard
    @user        = current_user
    @teams       = Team.all
    @next_scrims = @user.team.next_scrims_confirmed
  end
end
