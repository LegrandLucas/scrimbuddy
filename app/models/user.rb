require 'json'
require 'open-uri'

class User < ApplicationRecord
  belongs_to :team
  has_many :reviews, dependent: :destroy
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def scraping_infos_from_riot_games
    all_stats = []
    summoner_url = "https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{lol_account}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    summoner_serialized = open(URI.parse(URI.escape(summoner_url))).read
    summoner_infos = JSON.parse(summoner_serialized)
    summoner_id = summoner_infos['id']

    stats_url = "https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/#{summoner_id}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    stats_serialized = open(stats_url).read
    stats_infos = JSON.parse(stats_serialized)
    stats = stats_infos.first
    wins = stats["wins"]
    all_stats << wins
    losses = stats["losses"]
    all_stats << losses
    tier = stats["tier"]
    all_stats << tier
    rank = stats["rank"]
    all_stats << rank
    league_points = stats["leaguePoints"]
    all_stats << league_points

    return all_stats
  end
end
