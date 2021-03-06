# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "Destroy all seeds..."
Message.destroy_all
Scrim.destroy_all
Team.destroy_all
User.destroy_all

puts "Creating users, teams and scrims..."

fnatic = Team.create!(
  name: "FNATIC",
  league: "LEC",
  country: "England",
  description: "Fnatic is a professional esports organization headquartered in London, United Kingdom. Founded 23 July 2004, the team has players from around the world, across a variety of games"
)

logo_path = Rails.root.join('app', 'assets', 'images', 'logofnatic.png')

fnatic.images.attach(io: File.open(logo_path), filename: 'logofnatic.png', content_type: 'image/png')

gtwo = Team.create!(
  name: "G2 ESPORTS",
  league: "LEC",
  country: "Spain",
  description: "G2 Esports, formerly known as Gamers2, is a Spanish esports organisation based in Berlin, Germany,[1] with players competing in League of Legends"
)

gtwo_logo_path = Rails.root.join('app', 'assets', 'images', 'logogtwo.png')

gtwo.images.attach(io: File.open(gtwo_logo_path), filename: 'logogtwo.png', content_type: 'image/png')

fcschalke = Team.create!(
  name: "FC SCHALKE",
  league: "LEC",
  country: "Germany",
  description: "FC Schalke 04 Esports was announced on May 16, 2016, having purchased the EU LCS Summer 2016 seed and roster of Elements.[1] Their roster included Steve, Gilius, MrRalleZ, and sprattel from Elements's Spring Season lineup, with Fox from Unicorns of Love replacing Eika. With the acquisition, FC Schalke 04 became the second professional sports organization to sign a League of Legends team, after Beşiktaş acquired Aces High in 2015."
)

fcs_logo_path = Rails.root.join('app', 'assets', 'images', 'logofcs.png')

fcschalke.images.attach(io: File.open(fcs_logo_path), filename: 'logofcs.png', content_type: 'image/png')


misfits = Team.create!(
  name: "MISFITS",
  league: "LEC",
  country: "US",
  description: "Misfits was formed in May 2016 to play in the EUCS Summer Qualifiers after their former parent organization Renegades was banned from competitive play and so could no longer compete under the name Renegades: Banditos. In the qualifiers, they finished first in their group and then defeated EURONICS Gaming 3-1 in the finals to successfully qualify for the Summer Season."
)

misfits_logo_path = Rails.root.join('app', 'assets', 'images', 'logomisfits.png')

misfits.images.attach(io: File.open(misfits_logo_path), filename: 'logomisfits.png', content_type: 'image/png')

vitality = Team.create!(
  name: "TEAM VITALITY",
  league: "LEC",
  country: "France",
  description: "Team Vitality formed its League of Legends team in December 2015 as its first expansion into PC gaming, acquiring Gambit Gaming's EU LCS Spring 2016 seed. Their first player signed at the time of announcement was former H2k support kaSing. 5 days later, Vitality completed their roster with former Gambit toplaner Cabochard, former CW jungler Shook, former ROCCAT midlaner Nukeduck and kaSing's former teammate Hjarnan. For their coaching staff, Vitality signed former Gambit coach Shaunz."
)
vitality_logo_path = Rails.root.join('app', 'assets', 'images', 'logovitality.png')

vitality.images.attach(io: File.open(vitality_logo_path), filename: 'logovitality.png', content_type: 'image/png')


splyce = Team.create!(
  name: "SPLYCE",
  league: "LEC",
  country: "Canada",
  description: "Splyce is an American esports organization with a European League of Legends team. The organization was acquired by OverActive Media in November 2018. They were previously known as Follow eSports."
)
splyce_logo_path = Rails.root.join('app', 'assets', 'images', 'splycelogo.png')

splyce.images.attach(io: File.open(splyce_logo_path), filename: 'splycelogo.png', content_type: 'image/png')


origen = Team.create!(
  name: "ORIGEN",
  league: "LEC",
  country: "Spain",
  description: "Origen is a European team that was founded by xPeke to compete in the EU LCS (now LEC). The organization was acquired by RFRSH Entertainment in late 2018."
)
origen_logo_path = Rails.root.join('app', 'assets', 'images', 'origenlogo.png')

origen.images.attach(io: File.open(origen_logo_path), filename: 'origenlogo.png', content_type: 'image/png')

sk = Team.create!(
  name: "SK GAMING",
  league: "LEC",
  country: "Germany",
  description: "SK Gaming is a German team, which has been part of the esports community since 1997. The organization entered the League of Legends scene in September 2010."
)
sk_logo_path = Rails.root.join('app', 'assets', 'images', 'sklogo.png')

sk.images.attach(io: File.open(sk_logo_path), filename: 'sklogo.png', content_type: 'image/png')

rogue = Team.create!(
  name: "ROGUE",
  league: "LEC",
  country: "USA",
  description: "Rogue is a European League of Legends esports team. They play in the LEC. There is a disambiguation page associated with the name Rogue. Three players and one other team share this name."
)
rogue_logo_path = Rails.root.join('app', 'assets', 'images', 'roguelogo.png')

rogue.images.attach(io: File.open(rogue_logo_path), filename: 'roguelogo.png', content_type: 'image/png')

excel = Team.create!(
  name: "EXCEL ESPORTS",
  league: "LEC",
  country: "Canada",
  description: "Excel Esports is a British team. Their name was previously stylized exceL eSports and later exceL Esports."
)
excel_logo_path = Rails.root.join('app', 'assets', 'images', 'excellogo.png')

excel.images.attach(io: File.open(excel_logo_path), filename: 'excellogo.png', content_type: 'image/png')

ldlc = Team.create!(
  name: "LDLC",
  league: "LFL",
  country: "France",
  description: "Team-LDLC is a professional esports organization based in France."
)
ldlc_logo_path = Rails.root.join('app', 'assets', 'images', 'ldlclogo.png')

ldlc.images.attach(io: File.open(ldlc_logo_path), filename: 'ldlclogo.png', content_type: 'image/png')

gamersorigin = Team.create!(
  name: "GAMERSORIGIN",
  league: "LFL",
  country: "France",
  description: "none"
)
gamersorigin_logo_path = Rails.root.join('app', 'assets', 'images', 'gamersoriginlogo.png')

gamersorigin.images.attach(io: File.open(gamersorigin_logo_path), filename: 'gamersoriginlogo.png', content_type: 'image/png')


bwipo = User.create!(
  first_name: "Gabriel",
  last_name: "Rau",
  email: "gabriel.rau@fnatic.com",
  password: "azerty",
  lol_account: "FNC Bwipo",
  pseudo: "Bwipo",
  team: fnatic,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
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
  season_wins: 0,
  season_losses: 0,
  role: "Jungler"
  )

avatar_mads_path = Rails.root.join('app', 'assets', 'images', 'mads.png')
broxah.avatar.attach(io: File.open(avatar_mads_path), filename: 'mads.png', content_type: 'image/png')

nemesis = User.create!(
  first_name: "Tim",
  last_name: "Lipovsek",
  email: "tim.lipovsek@fnatic.com",
  password: "azerty",
  lol_account: "FNC Nêmesis",
  pseudo: "Nemesis",
  team: fnatic,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Mid"
  )

avatar_tim_path = Rails.root.join('app', 'assets', 'images', 'tim.png')
nemesis.avatar.attach(io: File.open(avatar_tim_path), filename: 'tim.png', content_type: 'image/png')


rekkles = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "martin.larsson@fnatic.com",
  password: "azerty",
  lol_account: "Spencer Reid",
  pseudo: "Rekkles",
  team: fnatic,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Carry AD"
)

avatar_martin_path = Rails.root.join('app', 'assets', 'images', 'martin.png')
rekkles.avatar.attach(io: File.open(avatar_martin_path), filename: 'martin.png', content_type: 'image/png')


hylissang = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "zdravets.galabov@fnatic.com",
  password: "azerty",
  lol_account: "Svveeney Todd",
  pseudo: "Hylissangh",
  team: fnatic,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Support"
  )

avatar_hyli_path = Rails.root.join('app', 'assets', 'images', 'hylissang.png')
hylissang.avatar.attach(io: File.open(avatar_hyli_path), filename: 'hylissang.png', content_type: 'image/png')


mephisto = User.create!(
  first_name: "Louis-Victor",
  last_name: "Legendre",
  email: "lv-legendre@fnatic.com",
  password: "azerty",
  pseudo: "Mephisto",
  team: fnatic,
  user_type: "Coach",
  season_wins: 0,
  season_losses: 0,
  role: "Coach"
)

avatar_mephisto_path = Rails.root.join('app', 'assets', 'images', 'lucas.png')
mephisto.avatar.attach(io: File.open(avatar_mephisto_path), filename: 'lucas.png', content_type: 'image/png')


wunder = User.create!(
  first_name: "Martin",
  last_name: "Nordahl Hansen",
  email: "martinnordahlhansen@g2esport.com",
  password: "azerty",
  lol_account: "LVL 60 BIS Mage",
  pseudo: "Wunder",
  team: gtwo,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
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
  season_wins: 0,
  season_losses: 0,
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
  season_wins: 0,
  season_losses: 0,
  role: "Mid"
  )

avatar_caps_path = Rails.root.join('app', 'assets', 'images', 'caps.png')
caps.avatar.attach(io: File.open(avatar_caps_path), filename: 'caps.png', content_type: 'image/png')


perkz = User.create!(
  first_name: "Luka",
  last_name: "Perković",
  email: "lukaperković@g2esport.com",
  password: "azerty",
  lol_account: "Uma Jan",
  pseudo: "PerkZ",
  team: gtwo,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
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
  season_wins: 0,
  season_losses: 0,
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
  season_wins: 0,
  season_losses: 0,
  role: "Coach"
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
  team: fcschalke,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Top"
  )

avatar_odoamne_path = Rails.root.join('app', 'assets', 'images', 'odoamne.png')
odoamne.avatar.attach(io: File.open(avatar_odoamne_path), filename: 'odoamne.png', content_type: 'image/png')

trick = User.create!(
  first_name: "Kim",
  last_name: "Gang-yun",
  email: "kimgang@fcs.com",
  password: "azerty",
  lol_account: "Trick",
  pseudo: "Trick",
  team: fcschalke,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Jungler"
  )

avatar_trick_path = Rails.root.join('app', 'assets', 'images', 'trick.png')
trick.avatar.attach(io: File.open(avatar_trick_path), filename: 'trick.png', content_type: 'image/png')


abbedagge = User.create!(
  first_name: "Felix",
  last_name: "Braun",
  email: "felixbraun@fcs.com",
  password: "azerty",
  lol_account: "Abbedagge",
  pseudo: "Abbedagge",
  team: fcschalke,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Mid"
  )

avatar_abbedagge_path = Rails.root.join('app', 'assets', 'images', 'abbedagge.png')
abbedagge.avatar.attach(io: File.open(avatar_abbedagge_path), filename: 'abbedagge.png', content_type: 'image/png')

upset = User.create!(
  first_name: "Elias",
  last_name: "Lipp",
  email: "eliaslipp@fcs.com",
  password: "azerty",
  lol_account: "OG Upset",
  pseudo: "Upset",
  team: fcschalke,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Carry AD"
  )

avatar_upset_path = Rails.root.join('app', 'assets', 'images', 'upset.png')
upset.avatar.attach(io: File.open(avatar_upset_path), filename: 'upset.png', content_type: 'image/png')

ignar = User.create!(
  first_name: "Lee",
  last_name: "Dong-geun",
  email: "leedong@fcs.com",
  password: "azerty",
  lol_account: "IgNar",
  pseudo: "IgNar",
  team: fcschalke,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Support"
  )

avatar_ignar_path = Rails.root.join('app', 'assets', 'images', 'ignar.png')
ignar.avatar.attach(io: File.open(avatar_ignar_path), filename: 'ignar.png', content_type: 'image/png')

falco = User.create!(
  first_name: "Dylan",
  last_name: "Falco",
  email: "dylanfalco@fcs.com",
  password: "azerty",
  pseudo: "Falco",
  team: fcschalke,
  user_type: "coach",
  season_wins: 0,
  season_losses: 0,
  role: "Coach"
  )

avatar_falco_path = Rails.root.join('app', 'assets', 'images', 'falco.png')
falco.avatar.attach(io: File.open(avatar_falco_path), filename: 'falco.png', content_type: 'image/png')


dandan = User.create!(
  first_name: "Danny",
  last_name: "Le Comte",
  email: "dannylecomte@misfits.com",
  password: "azerty",
  lol_account: "Dan Dan DD",
  pseudo: "Dan Dan",
  team: misfits,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Top"
  )

avatar_dandan_path = Rails.root.join('app', 'assets', 'images', 'dandan.png')
dandan.avatar.attach(io: File.open(avatar_dandan_path), filename: 'dandan.png', content_type: 'image/png')

kirei = User.create!(
  first_name: "Thomas",
  last_name: "Yuen",
  email: "thomasyuen@misfits.com",
  password: "azerty",
  lol_account: "kirei smurfer",
  pseudo: "Kirei",
  team: misfits,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Jungler"
  )



avatar_kirei_path = Rails.root.join('app', 'assets', 'images', 'kirei.png')
kirei.avatar.attach(io: File.open(avatar_kirei_path), filename: 'kirei.png', content_type: 'image/png')


febiven = User.create!(
  first_name: "Fabian",
  last_name: "Diepstraten",
  email: "fabiandiep@misfits.com",
  password: "azerty",
  lol_account: "MSF FEB1VEN",
  pseudo: "Febiven",
  team: misfits,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Mid"
  )

avatar_febiven_path = Rails.root.join('app', 'assets', 'images', 'febiven.png')
febiven.avatar.attach(io: File.open(avatar_febiven_path), filename: 'febiven.png', content_type: 'image/png')



neon = User.create!(
  first_name: "Matúš",
  last_name: "Jakubčík",
  email: "mj@misfits.com",
  password: "azerty",
  lol_account: "Neon1337Ad",
  pseudo: "Neon",
  team: misfits,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Carry AD"
  )

avatar_neon_path = Rails.root.join('app', 'assets', 'images', 'neon.png')
neon.avatar.attach(io: File.open(avatar_neon_path), filename: 'neon.png', content_type: 'image/png')

hiva = User.create!(
  first_name: "Aleksi",
  last_name: "Kaikkonen",
  email: "alexiskaikkonen@misfits.com",
  password: "azerty",
  lol_account: "Swaglord H1IVA",
  pseudo: "H1iva",
  team: misfits,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Support"
  )

avatar_hiva_path = Rails.root.join('app', 'assets', 'images', 'hiva.png')
hiva.avatar.attach(io: File.open(avatar_hiva_path), filename: 'hiva.png', content_type: 'image/png')


# puts "CREATING JANDRO"
# jandro = User.create!(
#   first_name: "Alejandro",
#   last_name: "Fernández-Valdés",
#   email: "jandro@misfits.com",
#   password: "azerty",
#   pseudo: "Jandro",
#   season_wins: 0,
#   season_losses: 0,
#   team: misfits,
#   user_type: "coach",
#   role: "Coach"
# )

# puts "                  "
# puts "                  "
# puts "                  "
# puts "                  "
# puts "ATTACH PICTURES"
# avatar_jandro_path = Rails.root.join('app', 'assets', 'images', 'jandro.png')
# jandro.avatar.attach(io: File.open(avatar_jandro_path), filename: 'jandro.png', content_type: 'image/png')
# puts "                  "
# puts "                  "
# puts "                  "
# puts "                  "

cabochard = User.create!(
  first_name: "Lucas",
  last_name: "Simon-Meslet",
  email: "lulu@vitality.com",
  password: "azerty",
  lol_account: "v Caboche",
  pseudo: "Cabochard",
  team: vitality,
  user_type: "player",
  role: "Top",
  season_wins: 255,
  season_losses: 208,
  rank: 'MASTER I',
  league_points: 116,
  most_used_champions: "Mordekaiser Akali Kled Gragas Renekton"
  )

avatar_cabochard_path = Rails.root.join('app', 'assets', 'images', 'cabochard.png')
cabochard.avatar.attach(io: File.open(avatar_cabochard_path), filename: 'cabochard.png', content_type: 'image/png')

mowgli = User.create!(
  first_name: "Lee",
  last_name: "Jae-ha",
  email: "leejae@vitality.com",
  password: "azerty",
  lol_account: "VIT aminA",
  pseudo: "Mowgli",
  team: vitality,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Jungler"
  )

avatar_mowgli_path = Rails.root.join('app', 'assets', 'images', 'mowgli.png')
mowgli.avatar.attach(io: File.open(avatar_mowgli_path), filename: 'mowgli.png', content_type: 'image/png')

jiizuke = User.create!(
  first_name: "Daniele",
  last_name: "di Mauro",
  email: "jiizuke@vitality.com",
  password: "azerty",
  lol_account: "VIT Jiizuké",
  pseudo: "Jiizuke",
  team: vitality,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Mid"
  )

avatar_jiizuke_path = Rails.root.join('app', 'assets', 'images', 'jiizuke.png')
jiizuke.avatar.attach(io: File.open(avatar_jiizuke_path), filename: 'jiizuke.png', content_type: 'image/png')

attila = User.create!(
  first_name: "Amadeu",
  last_name: "Carvalho",
  email: "wolfgang@vitality.com",
  password: "azerty",
  lol_account: "VIT Attila",
  pseudo: "Attila",
  team: vitality,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Carry AD"
  )

avatar_attila_path = Rails.root.join('app', 'assets', 'images', 'attila.png')
attila.avatar.attach(io: File.open(avatar_attila_path), filename: 'attila.png', content_type: 'image/png')

jactroll = User.create!(
  first_name: "Jakub",
  last_name: "Skurzyński",
  email: "jskur@vitality.com",
  password: "azerty",
  lol_account: "v Jactroll",
  pseudo: "Jactroll",
  team: vitality,
  user_type: "player",
  season_wins: 0,
  season_losses: 0,
  role: "Support"
  )

avatar_jactroll_path = Rails.root.join('app', 'assets', 'images', 'jactroll.png')
jactroll.avatar.attach(io: File.open(avatar_jactroll_path), filename: 'jactroll.png', content_type: 'image/png')

yamato = User.create!(
  first_name: "Jakob",
  last_name: "Mebdi",
  email: "jakobmebdi@vitality.com",
  password: "azerty",
  pseudo: "YamatoCannon",
  team: vitality,
  user_type: "coach",
  season_wins: 0,
  season_losses: 0,
  role: "Coach"
  )

avatar_yamato_path = Rails.root.join('app', 'assets', 'images', 'yamato.png')
yamato.avatar.attach(io: File.open(avatar_yamato_path), filename: 'yamato.png', content_type: 'image/png')

vizicsacsi = User.create!(
  first_name: "Tamás",
  last_name: "Kiss",
  email: "tamas@splyce.com",
  password: "azerty",
  lol_account: "SPY Vizicsacsi",
  pseudo: "Vizicsacsi",
  team: splyce,
  user_type: "player",
  role: "Top",
  season_wins: 281,
  season_losses: 236,
  rank: 'DIAMOND I',
  league_points: 75,
  most_used_champions: "Kennen Aatrox JarvanIV Renekton Gangplank"
  )

avatar_vizicsacsi_path = Rails.root.join('app', 'assets', 'images', 'vizicsacsi.png')
vizicsacsi.avatar.attach(io: File.open(avatar_vizicsacsi_path), filename: 'vizicsacsi.png', content_type: 'image/png')

xerxe = User.create!(
  first_name: "Andrei",
  last_name: "Dragomir",
  email: "andreidragomir@splyce.com",
  password: "azerty",
  lol_account: "Holy Rabies",
  pseudo: "Xerxe",
  team: splyce,
  user_type: "player",
  role: "Jungler",
  season_wins: 423,
  season_losses: 356,
  rank: 'CHALLENGER I',
  league_points: 715,
  most_used_champions: "Shyvana Khazix Hecarim Nidalee Kayn"
  )

avatar_xerxe_path = Rails.root.join('app', 'assets', 'images', 'xerxe.png')
xerxe.avatar.attach(io: File.open(avatar_xerxe_path), filename: 'xerxe.png', content_type: 'image/png')


humanoid = User.create!(
  first_name: "Marek",
  last_name: "Brázda",
  email: "marek@splyce.com",
  password: "azerty",
  lol_account: "Positive tryhard",
  pseudo: "Humanoid",
  team: splyce,
  user_type: "player",
  role: "Mid",
  season_wins: 459,
  season_losses: 379,
  rank: 'CHALLENGER I',
  league_points: 1009,
  most_used_champions: "Akali Cassiopeia Kaisa Ryze Tristana"
  )

avatar_humanoid_path = Rails.root.join('app', 'assets', 'images', 'humanoid.png')
humanoid.avatar.attach(io: File.open(avatar_humanoid_path), filename: 'humanoid.png', content_type: 'image/png')


kobbe = User.create!(
  first_name: "Kasper",
  last_name: "Kobberup",
  email: "kasper@splyce.com",
  password: "azerty",
  lol_account: "Kobbe",
  pseudo: "Kobbe",
  team: splyce,
  user_type: "player",
  role: "Carry AD",
  season_wins: 608,
  season_losses: 524,
  rank: 'CHALLENGER I',
  league_points: 710,
  most_used_champions: "Kaisa Senna Xayah Lucian Yasuo"
  )

avatar_kobbe_path = Rails.root.join('app', 'assets', 'images', 'kobbe.png')
kobbe.avatar.attach(io: File.open(avatar_kobbe_path), filename: 'kobbe.png', content_type: 'image/png')


tore = User.create!(
  first_name: "Tore",
  last_name: "Hoel Eilertsen",
  email: "tore@splyce.com",
  password: "azerty",
  lol_account: "ekstra stor Tore",
  pseudo: "Norskeren",
  team: splyce,
  user_type: "player",
  role: "Support",
  season_wins: 476,
  season_losses: 399,
  rank: 'CHALLENGER I',
  league_points: 648,
  most_used_champions: "Alistar Orianna Irelia Ryze Morgana"
  )

avatar_tore_path = Rails.root.join('app', 'assets', 'images', 'tore.png')
tore.avatar.attach(io: File.open(avatar_tore_path), filename: 'tore.png', content_type: 'image/png')

duke = User.create!(
  first_name: "Hadrien",
  last_name: "Forestier",
  email: "duke@splyce.com",
  password: "azerty",
  pseudo: "Duke",
  team: splyce,
  user_type: "coach",
  season_wins: 0,
  season_losses: 0,
  role: "Coach"
  )

avatar_duke_path = Rails.root.join('app', 'assets', 'images', 'duke.png')
duke.avatar.attach(io: File.open(avatar_duke_path), filename: 'duke.png', content_type: 'image/png')


scrim1 = Scrim.create!(
  start_game: DateTime.new(2019,12,9,15,30,00),
  end_game: DateTime.new(2019,12,9,18,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true,
  )

scrim2 = Scrim.create!(
  start_game: DateTime.new(2019,12,10,10,30,00),
  end_game: DateTime.new(2019,12,10,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim3 = Scrim.create!(
  start_game: DateTime.new(2019,12,11,10,30,00),
  end_game: DateTime.new(2019,12,11,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim4 = Scrim.create!(
  start_game: DateTime.new(2019,12,12,10,30,00),
  end_game: DateTime.new(2019,12,12,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim5 = Scrim.create!(
  start_game: DateTime.new(2019,12,13,10,30,00),
  end_game: DateTime.new(2019,12,13,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim6 = Scrim.create!(
  start_game: DateTime.new(2019,12,14,10,30,00),
  end_game: DateTime.new(2019,12,14,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim7 = Scrim.create!(
  start_game: DateTime.new(2019,12,15,10,30,00),
  end_game: DateTime.new(2019,12,15,12,30,00),
  team_host: vitality,
  team_visitor: gtwo,
  confirmation: true
  )

scrim8 = Scrim.create!(
  start_game: DateTime.new(2019,12,12,10,30,00),
  end_game: DateTime.new(2019,12,12,12,30,00),
  team_host: gamersorigin,
  team_visitor: fnatic,
  confirmation: false
  )

scrim8 = Scrim.create!(
  start_game: DateTime.new(2019,12,13,10,30,00),
  end_game: DateTime.new(2019,12,13,12,30,00),
  team_host: misfits,
  team_visitor: fnatic,
  confirmation: false
  )

scrim9 = Scrim.create!(
  start_game: DateTime.new(2019,12,12,10,30,00),
  end_game: DateTime.new(2019,12,12,12,30,00),
  team_host: fnatic,
  team_visitor: ldlc,
  confirmation: false
  )

scrim10 = Scrim.create!(
  start_game: DateTime.new(2019,12,9,10,30,00),
  end_game: DateTime.new(2019,12,9,12,30,00),
  team_host: fnatic,
  team_visitor: vitality,
  confirmation: true
  )

scrim11 = Scrim.create!(
  start_game: DateTime.new(2019,12,14,10,30,00),
  end_game: DateTime.new(2019,12,14,12,30,00),
  team_host: fnatic,
  team_visitor: origen,
  confirmation: true
  )

scrim12 = Scrim.create!(
  start_game: DateTime.new(2019,12,16,10,30,00),
  end_game: DateTime.new(2019,12,16,12,30,00),
  team_host: fnatic,
  team_visitor: ldlc,
  confirmation: true
  )

scrim13 = Scrim.create!(
  start_game: DateTime.new(2019,12,18,10,30,00),
  end_game: DateTime.new(2019,12,18,12,30,00),
  team_host: fnatic,
  team_visitor: rogue,
  confirmation: true
  )

fncMatch1 = Scrim.create!(
  start_game: DateTime.new(2019,12,5,17,30,00),
  end_game: DateTime.new(2019,12,5,18,30,00),
  confirmation: true,
  team_visitor: vitality,
  team_host: fnatic,
  winner_team: "fnatic",
  team_visitor_kills: 8,
  team_host_kills: 19,
  team_visitor_champions: "Lucian JarvanIV Taliyah Ezreal Braum",
  team_host_champions: "Gangplank Karthus Lissandra Vayne Alistar"
  )

fncMatch2 = Scrim.create!(
  start_game: DateTime.new(2019,11,7,14,30,00),
  end_game: DateTime.new(2019,11,7,15,30,00),
  confirmation: true,
  team_host: fnatic,
  team_visitor: vitality,
  winner_team: "fnatic",
  team_host_kills: 14,
  team_visitor_kills: 5,
  team_host_champions: "Aatrox Karthus Lissandra Kaisa Thresh",
  team_visitor_champions: "Kennen JarvanIV Zoe Tristana Braum"
  )

fncMatch3 = Scrim.create!(
  start_game: DateTime.new(2019,11,7,17,30,00),
  end_game: DateTime.new(2019,11,7,18,30,00),
  confirmation: true,
  team_visitor: vitality,
  team_host: fnatic,
  winner_team: "fnatic",
  team_visitor_kills: 7,
  team_host_kills: 27,
  team_visitor_champions: "Jayce Gragas Yasuo Jinx Thresh",
  team_host_champions: "Sion RekSai Kayle Sivir Braum"
  )

fncMatch4 = Scrim.create!(
  start_game: DateTime.new(2019,11,7,16,00,00),
  end_game: DateTime.new(2019,11,7,17,00,00),
  confirmation: true,
  team_host: fnatic,
  team_visitor: splyce,
  winner_team: "fnatic",
  team_host_kills: 13,
  team_visitor_kills: 11,
  team_host_champions: "JarvanIV Karthus Syndra Sivir Alistar",
  team_visitor_champions: "Jayce RekSai Corki Zoe TahmKench"
  )

fncMatch5 = Scrim.create!(
  start_game: DateTime.new(2019,11,9,14,00,00),
  end_game: DateTime.new(2019,11,9,15,00,00),
  confirmation: true,
  team_visitor: splyce,
  team_host: fnatic,
  winner_team: "splyce",
  team_visitor_kills: 19,
  team_host_kills: 10,
  team_visitor_champions: "Sion Skarner Ryze Tristana Braum",
  team_host_champions: "Chogath RekSai Kayle Sivir Thresh"
  )

fncMatch6 = Scrim.create!(
  start_game: DateTime.new(2019,11,9,16,00,00),
  end_game: DateTime.new(2019,11,9,17,00,00),
  confirmation: true,
  team_host: fnatic,
  team_visitor: splyce,
  winner_team: "fnatic",
  team_host_kills: 18,
  team_visitor_kills: 20,
  team_host_champions: "Aatrox JarvanIV Lissandra Vayne Rakan",
  team_visitor_champions: "Shen RekSai Azir Jinx Thresh"
  )

fncMatch7 = Scrim.create!(
  start_game: DateTime.new(2019,11,9,17,00,00),
  end_game: DateTime.new(2019,11,9,18,00,00),
  confirmation: true,
  team_visitor: splyce,
  team_host: fnatic,
  winner_team: "fnatic",
  team_visitor_kills: 8,
  team_host_kills: 21,
  team_visitor_champions: "Shen Hecarim Sylas Veigar TahmKench",
  team_host_champions: "Lissandra JarvanIV Vayne Sivir Alistar"
  )

message1 = Message.create!(
  content: "Hello, is it still okay for tomorrow ?",
  sender: duke,
  receiver: mephisto,
  )

message2 = Message.create!(
  content: "Yes and for you ?",
  sender: mephisto,
  receiver: duke,
  )

message3 = Message.create!(
  content: "Yes, can we just do it earlier ? 30 minutes earlier than planed ?",
  sender: duke,
  receiver: mephisto,
  )

message4 = Message.create!(
  content: "I asked the guys, no problem, see you tomorrow",
  sender: mephisto,
  receiver: duke,
  )

message6 = Message.create!(
  content: "Hello",
  sender: falco,
  receiver: mephisto,
  )

message7 = Message.create!(
  content: "Hi man",
  sender: mephisto,
  receiver: falco,
  )

message8 = Message.create!(
  content: "Hello, are you available at the dates I sent to you ?",
  sender: mephisto,
  receiver: yamato,
  )

message9 = Message.create!(
  content: "Yes, I accept it",
  sender: yamato,
  receiver: mephisto,
  )

message10 = Message.create!(
  content: "Perfect, see you",
  sender: mephisto,
  receiver: yamato,
  )

message11 = Message.create!(
  content: "Hello, how are you ? ",
  sender: mephisto,
  receiver: grabzz,
  )


message12 = Message.create!(
  content: "Just to display messages cards.",
  sender: grabzz,
  receiver: mephisto,
  )


playerHistory1 = UserHistory.create!(
  user: vizicsacsi,
  team_one_kills: 17,
  team_two_kills: 24,
  duration: 1510,
  winner: "team_two",
  team_one_champions: "Tristana Khazix Orianna Xayah Karma",
  team_two_champions: "Gangplank LeeSin Katarina Kaisa Morgana",
  team_one_players: "SPY Vizicsacsi, I am LeBron v2, PABLO NAVEIRAS, NoNemAgain, Luka Cica",
  team_two_players: "Mr Ascendant, Shëun, Tråkig karaktär, IGY Kxng, Mizune4",
  player_team: 'team_one'
  )

playerHistory2 = UserHistory.create!(
  user: vizicsacsi,
  team_one_kills: 23,
  team_two_kills: 38,
  duration: 1453,
  winner: "team_two",
  team_one_champions: "Gnar Gragas Katarina Xayah Leona",
  team_two_champions: "Camille Diana Kassadin Jhin Rakan",
  team_one_players: "SPY Vizicsacsi, NorthTomb0286, Bcs I Cân, Mıkσtσ Suoh, FYN Lilipp",
  team_two_players: "TwTv Drututt, Unbreakable Bond, IZI toucouille, west ch, Wheilltur",
  player_team: 'team_one'
  )

playerHistory3 = UserHistory.create!(
  user: vizicsacsi,
  team_one_kills: 37,
  team_two_kills: 37,
  duration: 1666,
  winner: "team_one",
  team_one_champions: "Neeko Kayn Ryze Ashe Thresh",
  team_two_champions: "Gangplank Karthus Yasuo Kaisa Pyke",
  team_one_players: "SPY Vizicsacsi, AUDI RS 7 1000HP, Grrumpyx, REC Woolite, ttommy shelby",
  team_two_players: "NilleNalley, Triestìno, kingofwarrior66, destroy you, Dadju abuser",
  player_team: 'team_one'
  )

playerHistory4 = UserHistory.create!(
  user: vizicsacsi,
  team_one_kills: 26,
  team_two_kills: 17,
  duration: 1416,
  winner: "team_one",
  team_one_champions: "Darius Nasus Fizz Senna Blitzcrank",
  team_two_champions: "Akali LeeSin Orianna Ashe Nidalee",
  team_one_players: "SPY Vizicsacsi, AUDI RS 7 1000HP, Grrumpyx, REC Woolite, ttommy shelby",
  team_two_players: "NilleNalley, Triestìno, kingofwarrior66, destroy you, Dadju abuser",
  player_team: 'team_one'
  )

playerHistory5 = UserHistory.create!(
  user: vizicsacsi,
  team_one_kills: 37,
  team_two_kills: 37,
  duration: 2064,
  winner: "team_two",
  team_one_champions: "Renekton Ekko Ahri Jhin Nautilus",
  team_two_champions: "Ryze Kayn Kassadin MissFortune Fiddlesticks",
  team_one_players: "SPY Vizicsacsi, Totally BoB, give me mid ok, Squirt gun, OwnerOfR",
  team_two_players: "try h4rder, L1 2 10, Xenagoras, Lapin du Néant, Nelun",
  player_team: 'team_one'
  )

playerHistory6 = UserHistory.create!(
  user: xerxe,
  team_one_kills: 36,
  team_two_kills: 47,
  duration: 2072,
  winner: "team_two",
  team_one_champions: "Mordekaiser Shyvana Qiyana Lucian Leona",
  team_two_champions: "Cassiopeia LeeSin Pyke Yasuo Gragas",
  team_one_players: "Friendly Pitbull, Holy Rabies, Chíbs, Barcodee, Swaglord H1IVA",
  team_two_players: "RGE Finnαir, RGE Lαrssen, VIT Jiizuké, Unicornrider1, Snusmumriken 4",
  player_team: 'team_one'
  )

playerHistory7 = UserHistory.create!(
  user: xerxe,
  team_one_kills: 20,
  team_two_kills: 39,
  duration: 1500,
  winner: "team_two",
  team_one_champions: "Aatrox RekSai Ryze Pyke Yuumi",
  team_two_champions: "Darius LeeSin Qiyana MissFortune Zyra",
  team_one_players: "Delitto, Holy Rabies, Jag vill vinna, VIT Jiizuké, OG Destlny",
  team_two_players: "JEWZAURUS REX, Elmargucci, Dark Decay, FNC xMatty, Targamas",
  player_team: 'team_one'
  )

playerHistory8 = UserHistory.create!(
  user: xerxe,
  team_one_kills: 14,
  team_two_kills: 28,
  duration: 1681,
  winner: "team_two",
  team_one_champions: "Vladimir Vi Sylas Tristana Thresh",
  team_two_champions: "Aatrox LeeSin Akali MissFortune Nautilus",
  team_one_players: "Orkun Civanoglu, Holy Rabies, Ectomorphic, ΞSΥΝDRΑξζ, Voorzaken",
  team_two_players: "Agresivooo, Gilly Willikers, Αdept, Vayne MF M, xErdote",
  player_team: 'team_one'
  )

playerHistory9 = UserHistory.create!(
  user: xerxe,
  team_one_kills: 33,
  team_two_kills: 20,
  duration: 1743,
  winner: "team_one",
  team_one_champions: "Ryze Khazix Syndra MissFortune Blitzcrank",
  team_two_champions: "Qiyana Elise Cassiopeia Draven Morgana",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory10 = UserHistory.create!(
  user: xerxe,
  team_one_kills: 16,
  team_two_kills: 6,
  duration: 1009,
  winner: "team_one",
  team_one_champions: "Riven Shyvana Qiyana Lucian Senna",
  team_two_champions: "Fiora Ekko Ryze Morgana Fiddlesticks",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory11 = UserHistory.create!(
  user: humanoid,
  team_one_kills: 46,
  team_two_kills: 33,
  duration: 1842,
  winner: "team_one",
  team_one_champions: "Ryze LeeSin Tristana Syndra Rakan",
  team_two_champions: "Heimerdinger Ekko Irelia MissFortune Pyke",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory12 = UserHistory.create!(
  user: humanoid,
  team_one_kills: 25,
  team_two_kills: 14,
  duration: 1232,
  winner: "team_one",
  team_one_champions: "Kled Nidalee Irelia Twitch Morgana",
  team_two_champions: "Rengar Elise Syndra Kaisa Thresh",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory13 = UserHistory.create!(
  user: humanoid,
  team_one_kills: 23,
  team_two_kills: 32,
  duration: 1355,
  winner: "team_two",
  team_one_champions: "Rengar RekSai Akali Vayne Braum",
  team_two_champions: "Ornn JarvanIV Katarina Kaisa Leona",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory14 = UserHistory.create!(
  user: humanoid,
  team_one_kills: 10,
  team_two_kills: 27,
  duration: 1455,
  winner: "team_two",
  team_one_champions: "Darius Graves Cassiopeia Jinx Thresh",
  team_two_champions: "Garen Khazix Kassadin Kaisa Nautilus",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory15 = UserHistory.create!(
  user: humanoid,
  team_one_kills: 25,
  team_two_kills: 46,
  duration: 1734,
  winner: "team_two",
  team_one_champions: "Ornn Khazix Cassiopeia Tristana Pyke",
  team_two_champions: "Sion Rengar Velkoz Kaisa Thresh",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory16 = UserHistory.create!(
  user: kobbe,
  team_one_kills: 38,
  team_two_kills: 38,
  duration: 1983,
  winner: "team_two",
  team_one_champions: "Akali Khazix Syndra Draven Blitzcrank",
  team_two_champions: "Ekko JarvanIV Azir MissFortune Thresh",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory17 = UserHistory.create!(
  user: kobbe,
  team_one_kills: 16,
  team_two_kills: 28,
  duration: 1333,
  winner: "team_two",
  team_one_champions: "Garen Graves Tristana Heimerdinger Janna",
  team_two_champions: "Camille Khazix Syndra MissFortune Thresh",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory18 = UserHistory.create!(
  user: kobbe,
  team_one_kills: 48,
  team_two_kills: 32,
  duration: 2522,
  winner: "team_one",
  team_one_champions: "Sion LeeSin Anivia Garen Yuumi",
  team_two_champions: "Tryndamere Amumu Qiyana Jhin Senna",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory19 = UserHistory.create!(
  user: kobbe,
  team_one_kills: 29,
  team_two_kills: 14,
  duration: 1349,
  winner: "team_one",
  team_one_champions: "Darius Khazix Heimerdinger Jhin Blitzcrank",
  team_two_champions: "Shen RekSai Brand Twitch Nami",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory20 = UserHistory.create!(
  user: kobbe,
  team_one_kills: 47,
  team_two_kills: 29,
  duration: 1798,
  winner: "team_one",
  team_one_champions: "Kled Olaf Cassiopeia Draven Thresh",
  team_two_champions: "Fiora Ekko Ryze Jhin TahmKench",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory21 = UserHistory.create!(
  user: tore,
  team_one_kills: 42,
  team_two_kills: 15,
  duration: 1492,
  winner: "team_one",
  team_one_champions: "Vladimir Olaf Zed Kaisa Nautilus",
  team_two_champions: "Renekton Ivern Yasuo MissFortune LeeSin",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory22 = UserHistory.create!(
  user: tore,
  team_one_kills: 50,
  team_two_kills: 50,
  duration: 2264,
  winner: "team_two",
  team_one_champions: "Shen RekSai TwistedFate Kaisa Swain",
  team_two_champions: "Kayle LeeSin Talon Vayne Fiddlesticks",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory23 = UserHistory.create!(
  user: tore,
  team_one_kills: 17,
  team_two_kills: 33,
  duration: 1402,
  winner: "team_two",
  team_one_champions: "MonkeyKing LeeSin Akali Caitlyn Morgana",
  team_two_champions: "Quinn Nunu Veigar MissFortune Nautilus",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory24 = UserHistory.create!(
  user: tore,
  team_one_kills: 35,
  team_two_kills: 15,
  duration: 1545,
  winner: "team_one",
  team_one_champions: "Akali Ivern Veigar Kaisa Karma",
  team_two_champions: "Jayce Kindred Cassiopeia Fizz Thresh",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

playerHistory25 = UserHistory.create!(
  user: tore,
  team_one_kills: 27,
  team_two_kills: 16,
  duration: 1283,
  winner: "team_one",
  team_one_champions: "Vladimir Elise Tristana Kaisa Leona",
  team_two_champions: "Garen Graves Fizz Lucian Nautilus",
  team_one_players: "Nik Tendo, Holy Rabies, JOHΝ, suomenajokoira, Jhinners",
  team_two_players: "jg diff victim, sof, Chemera, RGE Hαns sαmα, SteeelbacK",
  player_team: 'team_one'
  )

puts "Finished!"
