class Chambre < ApplicationRecord
  has_many :lits
  has_many :cabanes
end
