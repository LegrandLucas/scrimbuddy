# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "Destroy all seeds..."
Scrim.destroy_all
Team.destroy_all
Message.destroy_all
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


rekkles = User.create!(
  first_name: "Zdravets",
  last_name: "Galabov",
  email: "martin.larsson@fnatic.com",
  password: "azerty",
  lol_account: "Spencer Reid",
  pseudo: "Rekkles",
  team: fnatic,
  user_type: "player",
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
  lol_account: "Uma Jan",
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
  role: "Support"
  )

avatar_hiva_path = Rails.root.join('app', 'assets', 'images', 'hiva.png')
hiva.avatar.attach(io: File.open(avatar_hiva_path), filename: 'hiva.png', content_type: 'image/png')


jandro = User.create!(
  first_name: "Alejandro",
  last_name: "Fernández-Valdés",
  email: "jandro@misfits.com",
  password: "azerty",
  pseudo: "Jandro",
  team: misfits,
  user_type: "coach",
  role: "Coach"
  )

avatar_jandro_path = Rails.root.join('app', 'assets', 'images', 'jandro.png')
jandro.avatar.attach(io: File.open(avatar_jandro_path), filename: 'jandro.png', content_type: 'image/png')

cabochard = User.create!(
  first_name: "Lucas",
  last_name: "Simon-Meslet",
  email: "lulu@vitality.com",
  password: "azerty",
  lol_account: "v Caboche",
  pseudo: "Cabochard",
  team: vitality,
  user_type: "player",
  role: "Top"
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
  role: "Coach"
  )

avatar_yamato_path = Rails.root.join('app', 'assets', 'images', 'yamato.png')
yamato.avatar.attach(io: File.open(avatar_yamato_path), filename: 'yamato.png', content_type: 'image/png')

vizicsacsi = User.create!(
  first_name: "Tamás",
  last_name: "Kiss",
  email: "tamas@splyce.com",
  password: "azerty",
  lol_account: "aN Vizicsacsi",
  pseudo: "Vizicsacsi",
  team: splyce,
  user_type: "player",
  role: "Top"
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
  role: "Jungler"
  )

avatar_xerxe_path = Rails.root.join('app', 'assets', 'images', 'xerxe.png')
xerxe.avatar.attach(io: File.open(avatar_xerxe_path), filename: 'xerxe.png', content_type: 'image/png')


humanoid = User.create!(
  first_name: "Marek",
  last_name: "Brázda",
  email: "marek@splyce.com",
  password: "azerty",
  lol_account: "Humanoid",
  pseudo: "Humanoid",
  team: splyce,
  user_type: "player",
  role: "Mid"
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
  role: "Carry AD"
  )

avatar_kobbe_path = Rails.root.join('app', 'assets', 'images', 'kobbe.png')
kobbe.avatar.attach(io: File.open(avatar_kobbe_path), filename: 'kobbe.png', content_type: 'image/png')


tore = User.create!(
  first_name: "Tore",
  last_name: "Hoel Eilertsen",
  email: "tore@splyce.com",
  password: "azerty",
  lol_account: "ekstra stor Tore",
  pseudo: "Tore",
  team: splyce,
  user_type: "player",
  role: "Support"
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
  role: "Coach"
  )

avatar_duke_path = Rails.root.join('app', 'assets', 'images', 'duke.png')
duke.avatar.attach(io: File.open(avatar_duke_path), filename: 'duke.png', content_type: 'image/png')


scrim1 = Scrim.create!(
  start_game: DateTime.new(2019,12,12,15,30,00),
  end_game: DateTime.new(2019,12,12,18,30,00),
  team_host: vitality,
  team_visitor: fnatic,
  confirmation: false,
  )

scrim2 = Scrim.create!(
  start_game: DateTime.new(2019,12,14,10,30,00),
  end_game: DateTime.new(2019,12,14,12,30,00),
  team_host: fnatic,
  team_visitor: gtwo,
  confirmation: false
  )

scrim3 = Scrim.create!(
  start_game: DateTime.new(2019,12,20,10,30,00),
  end_game: DateTime.new(2019,12,20,12,20,00),
  team_host: fnatic,
  team_visitor: splyce,
  confirmation: false
  )

scrim4 = Scrim.create!(
  start_game: DateTime.new(2019,12,8,10,30,00),
  end_game: DateTime.new(2019,12,8,12,20,00),
  team_host: fnatic,
  team_visitor: splyce,
  confirmation: false
  )

scrim5 = Scrim.create!(
  start_game: DateTime.new(2019,12,10,17,30,00),
  end_game: DateTime.new(2019,12,10,19,30,00),
  team_host: splyce,
  team_visitor: fnatic,
  confirmation: false
  )

scrim6 = Scrim.create!(
  start_game: DateTime.new(2019,12,13,17,30,00),
  end_game: DateTime.new(2019,12,13,19,30,00),
  team_host: fcschalke,
  team_visitor: fnatic,
  confirmation: false
  )


fncMatch1 = Scrim.create!(
  start_game: DateTime.new(2019,11,5,17,30,00),
  end_game: DateTime.new(2019,11,5,18,30,00),
  confirmation: true,
  team_host: vitality,
  team_visitor: fnatic,
  winner_team: "fnatic",
  team_host_kills: 8,
  team_visitor_kills: 19,
  team_host_champions: "Lucian JarvanIV Taliyah Ezreal Braum",
  team_visitor_champions: "Gangplank Karthus Lissandra Vayne Alistar"
  )

fncMatch2 = Scrim.create!(
  start_game: DateTime.new(2019,11,6,17,30,00),
  end_game: DateTime.new(2019,11,6,18,30,00),
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
  team_host: vitality,
  team_visitor: fnatic,
  winner_team: "fnatic",
  team_host_kills: 7,
  team_visitor_kills: 27,
  team_host_champions: "Jayce Gragas Yasuo Jinx Thresh",
  team_visitor_champions: "Sion RekSai Kayle Sivir Braum"
  )

fncMatch4 = Scrim.create!(
  start_game: DateTime.new(2019,11,8,17,30,00),
  end_game: DateTime.new(2019,11,8,18,30,00),
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
  start_game: DateTime.new(2019,11,9,17,30,00),
  end_game: DateTime.new(2019,11,9,18,30,00),
  confirmation: true,
  team_host: splyce,
  team_visitor: fnatic,
  winner_team: "splyce",
  team_host_kills: 19,
  team_visitor_kills: 10,
  team_host_champions: "Sion Skarner Ryze Tristana Braum",
  team_visitor_champions: "Chogath RekSai Kayle Sivir Thresh"
  )

fncMatch6 = Scrim.create!(
  start_game: DateTime.new(2019,11,10,17,30,00),
  end_game: DateTime.new(2019,11,10,18,30,00),
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
  start_game: DateTime.new(2019,11,11,17,30,00),
  end_game: DateTime.new(2019,11,11,18,30,00),
  confirmation: true,
  team_host: splyce,
  team_visitor: fnatic,
  winner_team: "fnatic",
  team_host_kills: 8,
  team_visitor_kills: 21,
  team_host_champions: "Shen Hecarim Sylas Veigar TahmKench",
  team_visitor_champions: "Lissandra JarvanIV Vayne Sivir Alistar"
  )

message1 = Message.create!(
  content: "Hello, is it still okay for tomorrow ?",
  sender: falco,
  receiver: mephisto,
  )

message2 = Message.create!(
  content: "Yes and for you ?",
  sender: mephisto,
  receiver: falco,
  )

message3 = Message.create!(
  content: "Yes, can we just do it earlier ? 30 minutes earlier than planed ?",
  sender: falco,
  receiver: mephisto,
  )

message4 = Message.create!(
  content: "I asked the guys, no problem, see you tomorrow",
  sender: mephisto,
  receiver: falco,
  )

puts "Finished!"

