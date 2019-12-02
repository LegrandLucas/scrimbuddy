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
    start_game = parse_date_time(params[:scrim][:start_game], params[:scrim][:start_hour])
    end_game = parse_date_time(params[:scrim][:start_game], params[:scrim][:end_hour])

    @scrim = Scrim.new(scrim_params)
    @scrim.team_host = Team.find(params[:team_id])
    @scrim.team_visitor = current_user.team
    @scrim.start_game = start_game
    @scrim.end_game = end_game
    if @scrim.save
      flash[:notice] = "Your scrim demand has been sent !"
      redirect_to dashboard_path

    else
      render :new
    end
  end

  def edit
  end

  def update
    if @scrim.update(scrim_params)
      redirect_to team_path(@team_host)
    else
      render :edit
    end
  end

  def destroy
    @scrim.destroy
    redirect_to team_path(@team_host)
  end

  private

  def set_scrim
    @scrim = Scrim.find(params[:id])
  end

  def scrim_params
    params.require(:scrim).permit(:result, :confirmation)
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
