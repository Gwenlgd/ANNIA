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
User.destroy_all
Voyage.destroy_all



puts "Creating users..."
gwen = User.create!(first_name: "Gwen", last_name: "Leg", email: "gwenl@test.com", password: "paradise")

puts "Creating voyages..."
voyage_gwen = Voyage.create!(category: "Voiture", ville: "Paris", rendezvous: "Paris 15", place: "3", user: gwen)
