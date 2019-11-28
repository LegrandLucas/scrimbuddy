class DashboardController < ApplicationController
  def show
    @teams = Team.all
    @user = User.find(params[:id])
  end
end
