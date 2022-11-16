class Chambre < ApplicationRecord
  # belongs_to :lits
  has_many :lits
  has_many :cabanes
end
