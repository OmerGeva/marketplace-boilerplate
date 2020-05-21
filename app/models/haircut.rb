class Haircut < ApplicationRecord
  belongs_to :user
  has_many :bookings


  HAIRCUT_TYPES = ["Haircut", "Beard Trim", "Haircut & Beard"]
end
