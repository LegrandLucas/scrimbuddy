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
# Review.destroy_all
Team.destroy_all
# Scrim.destroy_all

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
fnatic.images.attach(io: File.open(logo_path), filename: 'logofnatic.png', content_type: 'image/png')

gtwo = Team.create!(
  name: "G2 Esports",
  league: "LEC",
  country: "Spain",
  description: "G2 Esports, formerly known as Gamers2, is a Spanish esports organisation based in Berlin, Germany,[1] with players competing in League of Legends"
)

gtwo_path = Rails.root.join('app', 'assets', 'images', 'gtwo.png')
gtwo_logo_path = Rails.root.join('app', 'assets', 'images', 'logogtwo.png')

gtwo.images.attach(io: File.open(gtwo_path), filename: 'gtwo.png', content_type: 'image/png')
gtwo.images.attach(io: File.open(gtwo_logo_path), filename: 'logogtwo.png', content_type: 'image/png')

fcschalke = Team.create!(
  name: "FC Schalke 04 Esports",
  league: "LEC",
  country: "Germany",
  description: "FC Schalke 04 Esports was announced on May 16, 2016, having purchased the EU LCS Summer 2016 seed and roster of Elements.[1] Their roster included Steve, Gilius, MrRalleZ, and sprattel from Elements's Spring Season lineup, with Fox from Unicorns of Love replacing Eika. With the acquisition, FC Schalke 04 became the second professional sports organization to sign a League of Legends team, after Beşiktaş acquired Aces High in 2015."
)

fcs_logo_path = Rails.root.join('app', 'assets', 'images', 'logofcs.png')

fcschalke.images.attach(io: File.open(fcs_logo_path), filename: 'logofcs.png', content_type: 'image/png')



nemesis = User.create!(
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
nemesis.avatar.attach(io: File.open(avatar_tim_path), filename: 'tim.png', content_type: 'image/png')

bwipo = User.create!(
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
bwipo.avatar.attach(io: File.open(avatar_gab_path), filename: 'gab.png', content_type: 'image/png')

broxah = User.create!(
  first_name: "Mads",
  last_name: "Brock Pedersen",
  email: "mads.pedersen@fnatic.com",
  password: "azerty",
  lol_account: "FNC Brox",
  pseudo: "Broxah",
  team: fnatic,
  user_type: "player",
  role: "Jungler"
  )

avatar_mads_path = Rails.root.join('app', 'assets', 'images', 'mads.png')
broxah.avatar.attach(io: File.open(avatar_mads_path), filename: 'mads.png', content_type: 'image/png')


hylissang = User.create!(
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
hylissang.avatar.attach(io: File.open(avatar_hyli_path), filename: 'hylissang.png', content_type: 'image/png')



rekkles = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "martin.larsson@fnatic.com",
  password: "azerty",
  lol_account: "Fnatic Rekkles",
  pseudo: "Rekkles",
  team: fnatic,
  user_type: "player",
  role: "Carry AD"
)

avatar_martin_path = Rails.root.join('app', 'assets', 'images', 'martin.png')
rekkles.avatar.attach(io: File.open(avatar_martin_path), filename: 'martin.png', content_type: 'image/png')



mephisto = User.create!(
  first_name: "Louis-Victor",
  last_name: "Legendre",
  email: "lv-legendre@fnatic.com",
  password: "azerty",
  pseudo: "Mephisto",
  team: fnatic,
  user_type: "Coach",
)

avatar_mephisto_path = Rails.root.join('app', 'assets', 'images', 'troud.png')
mephisto.avatar.attach(io: File.open(avatar_mephisto_path), filename: 'troud.png', content_type: 'image/png')


wunder = User.create!(
  first_name: "Martin",
  last_name: "Nordahl Hansen",
  email: "martinnordahlhansen@g2esport.com",
  password: "azerty",
  lol_account: "d Wunderwear",
  pseudo: "Wunder",
  team: gtwo,
  user_type: "player",
  role: "Top"
  )

avatar_nordahl_path = Rails.root.join('app', 'assets', 'images', 'martinnord.png')
wunder.avatar.attach(io: File.open(avatar_nordahl_path), filename: 'martinnord.png', content_type: 'image/png')

jankos = User.create!(
  first_name: "Marcin",
  last_name: "Jankowski",
  email: "marcinjankowski@g2esport.com",
  password: "azerty",
  lol_account: "G2 Jerkzr",
  pseudo: "Jankos",
  team: gtwo,
  user_type: "player",
  role: "Jungler"
  )

avatar_jankowski_path = Rails.root.join('app', 'assets', 'images', 'martinjanko.png')
jankos.avatar.attach(io: File.open(avatar_jankowski_path), filename: 'martinjanko.png', content_type: 'image/png')


caps = User.create!(
  first_name: "Rasmus",
  last_name: "Borregaard Wintheri",
  email: "rasmusborregaardwinther@g2esport.com",
  password: "azerty",
  lol_account: "TheUnshackledOne",
  pseudo: "Caps",
  team: gtwo,
  user_type: "player",
  role: "Mid"
  )

avatar_caps_path = Rails.root.join('app', 'assets', 'images', 'caps.png')
caps.avatar.attach(io: File.open(avatar_caps_path), filename: 'caps.png', content_type: 'image/png')


perkz = User.create!(
  first_name: "Luka",
  last_name: "Perković",
  email: "lukaperković@g2esport.com",
  password: "azerty",
  lol_account: "G2 P3rkz",
  pseudo: "PerkZ",
  team: gtwo,
  user_type: "player",
  role: "Carry AD"
  )

avatar_perkz_path = Rails.root.join('app', 'assets', 'images', 'perkz.png')
perkz.avatar.attach(io: File.open(avatar_perkz_path), filename: 'perkz.png', content_type: 'image/png')


mikyx = User.create!(
  first_name: "Mihael",
  last_name: "Mehle",
  email: "mihaelmehle@g2esport.com",
  password: "azerty",
  lol_account: "MikyXD ",
  pseudo: "Mikyx",
  team: gtwo,
  user_type: "player",
  role: "Support"
  )

avatar_mikyx_path = Rails.root.join('app', 'assets', 'images', 'mikyx.png')
mikyx.avatar.attach(io: File.open(avatar_mikyx_path), filename: 'mikyx.png', content_type: 'image/png')

grabzz = User.create!(
  first_name: "Fabian",
  last_name: "Lohmann",
  email: "fabianlohmann@g2esport.com",
  password: "azerty",
  pseudo: "Grabzz",
  team: gtwo,
  user_type: "coach",
  )

avatar_grabzz_path = Rails.root.join('app', 'assets', 'images', 'grabzz.png')
grabzz.avatar.attach(io: File.open(avatar_grabzz_path), filename: 'grabzz.png', content_type: 'image/png')

odoamne = User.create!(
  first_name: "Andrei",
  last_name: "Pascu",
  email: "andreipascu@fcs.com",
  password: "azerty",
  lol_account: "Odoamne",
  pseudo: "Odoamne",
  team: gtwo,
  user_type: "player",
  role: "Top"
  )

avatar_odoamne_path = Rails.root.join('app', 'assets', 'images', 'odoamne.png')
odoamne.avatar.attach(io: File.open(avatar_odoamne_path), filename: 'odoamne.png', content_type: 'image/png')

abbedagge = User.create!(
  first_name: "Felix",
  last_name: "Braun",
  email: "felixbraun@fcs.com",
  password: "azerty",
  lol_account: "Abbedagge",
  pseudo: "Abbedagge",
  team: fcschalke,
  user_type: "player",
  role: "Mid"
  )

avatar_abbedagge_path = Rails.root.join('app', 'assets', 'images', 'abbedagge.png')
abbedagge.avatar.attach(io: File.open(avatar_abbedagge_path), filename: 'abbedagge.png', content_type: 'image/png')

ignar = User.create!(
  first_name: "Lee",
  last_name: "Dong-geun",
  email: "leedong@fcs.com",
  password: "azerty",
  lol_account: "IgNar",
  pseudo: "IgNar",
  team: fcschalke,
  user_type: "player",
  role: "Support"
  )

avatar_ignar_path = Rails.root.join('app', 'assets', 'images', 'ignar.png')
ignar.avatar.attach(io: File.open(avatar_ignar_path), filename: 'ignar.png', content_type: 'image/png')

upset = User.create!(
  first_name: "Elias",
  last_name: "Lipp",
  email: "eliaslipp@fcs.com",
  password: "azerty",
  lol_account: "Upset",
  pseudo: "Upset",
  team: fcschalke,
  user_type: "player",
  role: "Carry AD"
  )

avatar_upset_path = Rails.root.join('app', 'assets', 'images', 'upset.png')
upset.avatar.attach(io: File.open(avatar_upset_path), filename: 'upset.png', content_type: 'image/png')

trick = User.create!(
  first_name: "Kim",
  last_name: "Gang-yun",
  email: "kimgang@fcs.com",
  password: "azerty",
  lol_account: "Trick",
  pseudo: "Trick",
  team: fcschalke,
  user_type: "player",
  role: "Jungler"
  )

avatar_trick_path = Rails.root.join('app', 'assets', 'images', 'trick.png')
trick.avatar.attach(io: File.open(avatar_trick_path), filename: 'trick.png', content_type: 'image/png')

falco = User.create!(
  first_name: "Dylan",
  last_name: "Falco",
  email: "dylanfalco@g2esport.com",
  password: "azerty",
  pseudo: "Falco",
  team: fcschalke,
  user_type: "coach",
  )

avatar_falco_path = Rails.root.join('app', 'assets', 'images', 'falco.png')
falco.avatar.attach(io: File.open(avatar_falco_path), filename: 'falco.png', content_type: 'image/png')




puts "Finished!"

