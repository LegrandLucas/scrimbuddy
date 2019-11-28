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

  def scrapping_summoner_infos_from_riot_games
    summoner_url = "https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{lol_account}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    summoner_serialized = open(URI.parse(URI.escape(summoner_url))).read
    summoner_infos = JSON.parse(summoner_serialized)
    return summoner_infos
  end

  def scraping_summoner_stats_from_riot_games
    all_stats = []
    summoner_infos = scrapping_summoner_infos_from_riot_games
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

  def scrapping_matches_list_from_riot_games
    summoner_infos = scrapping_summoner_infos_from_riot_games
    summoner_account = summoner_infos['accountId']

    matches_url = "https://euw1.api.riotgames.com/lol/match/v4/matchlists/by-account/#{summoner_account}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    matches_serialized = open(matches_url).read
    matches_list = JSON.parse(matches_serialized)

    return matches_list["matches"].first(5)
  end

  def scrappig_match_details_from_riot_games
    matches = scrapping_matches_list_from_riot_games
    matches_id = []
    matches_details = []
    matches.each { |match| matches_id << match[:gameId] }

    matches_id.each do |id|
      match_url = "https://euw1.api.riotgames.com/lol/match/v4/matches/#{id}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
      match_serialized = open(match_url).read
      match_details = JSON.parse(match_serialized)
      matches_details << match_details
    end
    return matches_details[0]
    # participants : matches_details[0]["participants"]
    # participants identity : matches_details[0]["participantIdentities"] => pour recuperer le pseudo du joueur en comparant l'id du participantIdentities à celui de participants
    # teams : matches_details[0]["teams"]
  end

  def scrapping_champions_from_riot_games
    matches_details = scrappig_match_details_from_riot_games
    match_participants = []
    champions_id = []

    matches_details.each { |match| match_participants << match["participants"] }
    match_participants.each { |participant| champions_id << [participant["participantId"], participant["championId"]] }
  end
end
