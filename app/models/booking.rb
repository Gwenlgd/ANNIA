class Booking < ApplicationRecord
  belongs_to :lits
  belongs_to :user
end
