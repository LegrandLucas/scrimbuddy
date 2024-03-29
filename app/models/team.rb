class Team < ApplicationRecord
  has_many_attached :images
  has_one_attached :logo
  has_many :users, dependent: :destroy
  # has_many :team_histories, dependent: :destroy

  def scrims_host
    Scrim.where(team_host: self)
  end

  def scrims_visitor
    Scrim.where(team_visitor: self)
  end

  def scrims
    scrims_host + scrims_visitor
  end

  def scrims_against_current_user_team(user)
    scrims = scrims_host.where(team_visitor: user.team).select { |scrim| scrim.end_game < Date.today } + scrims_visitor.where(team_host: user.team).select { |scrim| scrim.end_game < Date.today }
    scrims.sort_by { |scrim| scrim.start_game }.reverse
  end

  def coach
    users.where(user_type: 'coach')
  end

  def next_scrims_confirmed
    host_scrims    = Scrim.where("team_host_id = ? AND confirmation = ? AND start_game > ?", self, true, Date.today)
    visitor_scrims = Scrim.where("team_visitor_id = ? AND confirmation = ? AND start_game > ?", self, true, Date.today)
    host_scrims + visitor_scrims
  end

  def invitations_received
    Scrim.where("team_visitor_id = ? AND confirmation = ? AND start_game > ?", self, false, Date.today)
  end

  def invitations_sent
    Scrim.where("team_host_id = ? AND confirmation = ? AND start_game > ?", self, false, Date.today)
  end

  def display_add_review_btn(user)
    user.scrims.map { |scrim| scrim.team_visitor == self || scrim.team_host == self }
    # user.scrim.select { |scrim| scrim.end_game < Date.today }.map(&:team).include?(self)
  end
end
