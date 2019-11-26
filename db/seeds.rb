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
image_path = Rails.root.join('app', 'assets', 'images', 'fnatic.png')
logo_path = Rails.root.join('app', 'assets', 'images', 'logofnatic.png')

fnatic.images.attach(io: File.open(image_path), filename: 'fnatic.png', content_type: 'image/png')
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

avatartim_path = Rails.root.join('app', 'assets', 'images', 'tim.png')
tim_lipovsek.avatar.attach(io: File.open(avatartim_path), filename: 'tim.png', content_type: 'image/png')

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

avatargab_path = Rails.root.join('app', 'assets', 'images', 'gab.png')
tim_lipovsek.avatar.attach(io: File.open(avatargab_path), filename: 'gab.png', content_type: 'image/png')

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

louis_victor_legendre = User.create!(
  first_name: "Louis-Victor",
  last_name: "Legendre",
  email: "lv-legendre@fnatic.com",
  password: "azerty",
  pseudo: "Mephisto",
  team: fnatic,
  user_type: "coach",
)


puts "Finished!"

