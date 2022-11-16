class Lit < ApplicationRecord
  has_and_belongs_to_many :chambres
  has_many :bookings
end
