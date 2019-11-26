# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "Destroy all seeds..."

User.destroy_all
Review.destroy_all
Team.destroy_all
Scrim.destroy_all

puts "Creating users, teams, reviews and scrims..."

fnatic = Team.create!(
  name: "Fnatic",
  league: "LEC",
  country: "England",
  description: "Fnatic is a professional esports organization headquartered in London, United Kingdom. Founded 23 July 2004, the team has players from around the world, across a variety of games"
)
fnatic_path = Rails.root.join('app', 'assets', 'images', 'fnatic.png')
logo_path = Rails.root.join('app', 'assets', 'images', 'logofnatic.png')

fnatic.images.attach(io: File.open(fnatic_path), filename: 'fnatic.png', content_type: 'image/png')
fnatic.logo.attach(io: File.open(logo_path), filename: 'logofnatic.png', content_type: 'image/png')


tim_lipovsek = User.create!(
  first_name: "Tim",
  last_name: "Lipovsek",
  email: "tim.lipovsek@fnatic.com",
  password: "azerty",
  lol_account: "FNC Nêmesis",
  pseudo: "Nemesis",
  team: fnatic,
  user_type: "player",
  role: "Mid"
  )

avatar_tim_path = Rails.root.join('app', 'assets', 'images', 'tim.png')
tim_lipovsek.avatar.attach(io: File.open(avatar_tim_path), filename: 'tim.png', content_type: 'image/png')

gabriel_rau = User.create!(
  first_name: "Gabriel",
  last_name: "Rau",
  email: "gabriel.rau@fnatic.com",
  password: "azerty",
  lol_account: "FNC Bwipo",
  pseudo: "Bwipo",
  team: fnatic,
  user_type: "player",
  role: "Top"
  )

avatar_gab_path = Rails.root.join('app', 'assets', 'images', 'gab.png')
tim_lipovsek.avatar.attach(io: File.open(avatar_gab_path), filename: 'gab.png', content_type: 'image/png')

mads_pedersen = User.create!(
  first_name: "Mads",
  last_name: "Brock Pedersen",
  email: "mads.pedersen@fnatic.com",
  password: "azerty",
  lol_account: "FNC Brox",
  pseudo: "Broxah",
  team: fnatic,
  user_type: "player",
  role: "Jungle"
  )

avatar_mads_path = Rails.root.join('app', 'assets', 'images', 'mads.png')
mads_pedersen.avatar.attach(io: File.open(avatar_mads_path), filename: 'mads.png', content_type: 'image/png')


zdravets_galabov = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "zdravets.galabov@fnatic.com",
  password: "azerty",
  lol_account: "FNC Hylissang",
  pseudo: "Hylissangh",
  team: fnatic,
  user_type: "player",
  role: "Support"
  )

avatar_hyli_path = Rails.root.join('app', 'assets', 'images', 'hylissang.png')
zdravets_galabov.avatar.attach(io: File.open(avatar_hyli_path), filename: 'hylissang.png', content_type: 'image/png')



martin_larsson = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "martin.larsson@fnatic.com",
  password: "azerty",
  lol_account: "Fnatic Rekkles",
  pseudo: "Rekkles",
  team: fnatic,
  user_type: "player",
  role: "Ad Carry"
)

avatar_martin_path = Rails.root.join('app', 'assets', 'images', 'martin.png')
martin_larsson.avatar.attach(io: File.open(avatar_martin_path), filename: 'martin.png', content_type: 'image/png')



louis_victor_legendre = User.create!(
  first_name: "Louis-Victor",
  last_name: "Legendre",
  email: "lv-legendre@fnatic.com",
  password: "azerty",
  pseudo: "Mephisto",
  team: fnatic,
  user_type: "coach",
)

avatar_mephisto_path = Rails.root.join('app', 'assets', 'images', 'troud.png')
louis_victor_legendre.avatar.attach(io: File.open(avatar_mephisto_path), filename: 'troud.png', content_type: 'image/png')



puts "Finished!"

