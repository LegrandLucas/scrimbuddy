class Team < ApplicationRecord
  has_many_attached :images
  has_one_attached :logo
  has_many :users, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def scrims_host
    Scrim.where(team_host: self)
  end

  def scrims_visitor
    Scrim.where(team_visitor: self)
  end

  def scrims
    scrims_host + scrims_visitor
  end

  def next_scrims_confirmed
    host_scrims = Scrim.where("team_host_id = ? AND confirmation = ? AND start_game <= ? AND start_game > ?", self, true, Date.today + 7, Date.today)
    visitor_scrims = Scrim.where("team_visitor_id = ? AND confirmation = ? AND start_game <= ? AND start_game > ?", self, true, Date.today + 7, Date.today)
    host_scrims + visitor_scrims
  end

  def display_add_review_btn(user)
    user.scrims.map { |scrim| scrim.team_visitor == self || scrim.team_host == self }
    # user.scrim.select { |scrim| scrim.end_game < Date.today }.map(&:team).include?(self)
  end
end
