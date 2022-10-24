# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

puts "Cleaning database..."
Voyage.destroy_all
Repa.destroy_all
User.destroy_all

puts "Creating Users..."
user1 = User.create!(first_name: "Gwen", last_name: "Leg", email: "gwenl@test.com", password: "paradise")
user2 = User.create!(first_name: "Mathilde", last_name: "Leg", email: "mathildel@test.com", password: "paradise")
user3 = User.create!(first_name: "Claire", last_name: "Leg", email: "clairel@test.com", password: "paradise")
user4 = User.create!(first_name: "Alix", last_name: "Leg", email: "alixl@test.com", password: "paradise")
user5 = User.create!(first_name: "Jules", last_name: "Leg", email: "jules@test.com", password: "paradise")
user6 = User.create!(first_name: "Laure", last_name: "Leg", email: "laure@test.com", password: "paradise")
user7 = User.create!(first_name: "Margaux", last_name: "Leg", email: "margaux@test.com", password: "paradise")
user8 = User.create!(first_name: "Gaïa", last_name: "Leg", email: "Gaia@test.com", password: "paradise")

puts "Creating Voyages..."
voyage_gwen = Voyage.create!(category: "Voiture", ville: "Paris", rendezvous: "Paris 15", place: "3", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user1)

voyage_gwen2 = Voyage.create!(category: "Train", ville: "Paris", rendezvous: "Paris 15", place: "2", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user1)

voyage_mathilde = Voyage.create!(category: "Train", ville: "Nice", rendezvous: "Paris 15", place: "2", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user2)

puts "Creating Repas..."

repas1 = Repa.create!(items: "Salade de riz", allergies: "None", quantities: "1", drinks: "Vin", user: user1)
repas2 = Repa.create!(items: "Quiche", allergies: "Vegan", quantities: "2", drinks: "Vin", user: user2)
repas2 = Repa.create!(items: "Chips", allergies: "Gluten", quantities: "5", drinks: "Vin", user: user3)
