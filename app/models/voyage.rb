class Voyage < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :ville, presence: true
  validates :place, presence: true
  validates :heure_arrivee, presence: true
  validates :date_arrivee, presence: true
  validates :heure_depart, presence: true
  validates :date_depart, presence: true
end
