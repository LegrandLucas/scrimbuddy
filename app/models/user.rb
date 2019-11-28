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
    total_games      = response_api["wins"] + response_api["losses"]
    {
      total_winning_game: response_api["wins"],
      total_loosing_game: response_api["losses"],
      total_games: total_games,
      per_cent_games: (response_api["wins"] * 100) / total_games,
      tier: response_api["tier"],
      rank: response_api["rank"],
      league_points: response_api["leaguePoints"]
    }
  end

  def five_last_matches_infos_from_riot
    id_matches = five_last_matches_from_riot.map { |match| match["gameId"] }
    matches = []
    id_matches.each do |id|
      url            = "https://euw1.api.riotgames.com/lol/match/v4/matches/#{id}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
      match_details  = JSON.parse(open(url).read)
      matches << match_details
    end
    matches.map do |match|
      total_one = match['participants'][0]['stats']['kills'] + match['participants'][1]['stats']['kills'] + match['participants'][2]['stats']['kills'] + match['participants'][3]['stats']['kills'] + match['participants'][4]['stats']['kills']
      total_two = match['participants'][5]['stats']['kills'] + match['participants'][6]['stats']['kills'] + match['participants'][7]['stats']['kills'] + match['participants'][8]['stats']['kills'] + match['participants'][9]['stats']['kills']
      winner = match['teams'][0]['win'] == 'Win' ? 'team_one' : 'team_two'
      {
        duration: match['gameDuration'],
        winner: winner,
        total_team_one_killed: total_one,
        total_team_two_killed: total_two,
        team_one_players: [
          match['participants'][0]['championId'],
          match['participants'][1]['championId'],
          match['participants'][2]['championId'],
          match['participants'][3]['championId'],
          match['participants'][4]['championId']
        ],
        team_two_players: [
          match['participants'][5]['championId'],
          match['participants'][6]['championId'],
          match['participants'][7]['championId'],
          match['participants'][8]['championId'],
          match['participants'][9]['championId']
        ]
      }
    end
  end

  def scrapping_champions_from_riot_games
    champion_list_url = "http://ddragon.leagueoflegends.com/cdn/9.23.1/data/en_US/champion.json"
    champions_serialized = open(champion_list_url).read
    champions = JSON.parse(champions_serialized)
    champions_infos = champions['data']
    p champions_infos

    matches_details = five_last_matches_infos_from_riot
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
    summoner_serialized = open(URI.parse(URI.escape(summoner_url))).read
    JSON.parse(summoner_serialized)
  end

  def five_last_matches_from_riot
    summoner_infos = scrapping_summoner_infos_from_riot_games
    url            = "https://euw1.api.riotgames.com/lol/match/v4/matchlists/by-account/#{summoner_infos['accountId']}?api_key=#{ENV['RIOT_GAMES_API_KEY']}"
    response_api   = JSON.parse(open(url).read)
    games          = response_api["matches"]
    games.first(5)
  end
end
