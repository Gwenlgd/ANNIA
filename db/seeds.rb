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
User.destroy_all

puts "Creating users..."
user1 = User.create!(first_name: "Gwen", last_name: "Leg", email: "gwenl@test.com", password: "paradise")
user2 = User.create!(first_name: "Mathilde", last_name: "Leg", email: "mathildel@test.com", password: "paradise")

puts "Creating voyages..."
voyage_gwen = Voyage.create!(category: "Voiture", ville: "Paris", rendezvous: "Paris 15", place: "3", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user1)

voyage_gwen2 = Voyage.create!(category: "Train", ville: "Paris", rendezvous: "Paris 15", place: "2", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user1)

voyage_gwen2 = Voyage.create!(category: "Train", ville: "Nice", rendezvous: "Paris 15", place: "2", heure_arrivee: "09:26:00" , date_arrivee: "2022-10-20" , heure_depart: "09:26:00" , date_depart: "2022-10-22",user: user2)
