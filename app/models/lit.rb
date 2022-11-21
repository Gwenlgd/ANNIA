class Lit < ApplicationRecord
  many_to_many :chambres
  has_many :bookings
end
