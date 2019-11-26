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


puts "Finished!"

