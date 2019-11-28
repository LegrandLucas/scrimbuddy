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

  def scraping_summoner_stats_from_riot_games
    summoner_infos   = scrapping_summoner_infos_from_riot_games
    stats_url        = "https://euw1.api.riotgames.com/lol/league/v4/entries/by-summoner/#{summoner_infos['id']}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    stats_serialized = open(stats_url).read
    response_api     = JSON.parse(stats_serialized).first
    {
      total_winning_game: response_api["wins"],
      total_loosing_game: response_api["losses"],
      tier: response_api["tier"],
      rank: response_api["rank"],
      league_points: response_api["leaguePoints"]
    }
  end

  def scrapping_matches_list_from_riot_games
    summoner_infos = scrapping_summoner_infos_from_riot_games
    summoner_account = summoner_infos['accountId']

    matches_url = "https://euw1.api.riotgames.com/lol/match/v4/matchlists/by-account/#{summoner_account}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    matches_serialized = open(matches_url).read
    matches_list = JSON.parse(matches_serialized)

    return matches_list["matches"].first(5)
  end

  def scrapping_match_details_from_riot_games
    matches = scrapping_matches_list_from_riot_games
    matches_id = []
    matches_details = []
    matches.each { |match| matches_id << match["gameId"] }

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
    champion_list_url = "http://ddragon.leagueoflegends.com/cdn/9.23.1/data/en_US/champion.json"
    champions_serialized = open(champion_list_url).read
    champions = JSON.parse(champions_serialized)
    champions_infos = champions['data']
    p champions_infos

    matches_details = scrapping_match_details_from_riot_games
    champions_id = []
    champions_name = []

    matches_details["participants"].each { |participant| champions_id << [participant["participantId"], participant["championId"]] }
    champions_id.each do |champion_id|
      champion_id[1]
    end
  end

  private

  def scrapping_summoner_infos_from_riot_games
    summoner_url        = "https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{lol_account}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    puts 'URL'
    p URI.parse(URI.escape(summoner_url))
    summoner_serialized = open(URI.parse(URI.escape(summoner_url))).read
    JSON.parse(summoner_serialized)
  end

end
