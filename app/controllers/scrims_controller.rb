class ScrimsController < ApplicationController
  before_action :set_team_host, only: %i[new create]
  before_action :set_scrim, only: %i[edit update destroy]

  def index
    @scrims = Scrim.all
  end

  def new
    @scrim = Scrim.new
  end

  def create
    sleep 2
    start_game = parse_date_time(params[:scrim][:start_game], params[:scrim][:start_hour])
    end_game   = parse_date_time(params[:scrim][:start_game], params[:scrim][:end_hour])

    @scrim = Scrim.new
    # @scrim.confirmation = false
    @scrim.team_host    = current_user.team
    @scrim.team_visitor = Team.find(params[:team_id])
    @scrim.start_game   = start_game
    @scrim.end_game     = end_game

    if @scrim.save
      flash[:notice] = "Your scrim demand has been sent !"
      redirect_to invitations_dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @scrim.confirmation = true
    @scrim.save
    respond_to do |format|
      format.html { redirect_to invitations_dashboard_path }
      format.js
    end
  end

  def destroy
    @scrim.destroy
    respond_to do |format|
      format.html { redirect_to invitations_dashboard_path }
      format.js
    end
  end

  private

  def set_scrim
    @scrim = Scrim.find(params[:id])
  end

  def scrim_params
    params.require(:scrim).permit(:result)
  end

  def set_team_host
    @team_host = Team.find(params[:team_id])
  end

  def parse_date_time(date, time)
    year = date.split('-').reverse.first.to_i
    month = date.split('-').reverse.second.to_i
    day = date.split('-').reverse.last.to_i

    hour = time.split(':').first.to_i
    minute = time.split(':').last.to_i

    DateTime.new(year, month, day, hour, minute)
  end

end
