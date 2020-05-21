class Booking < ApplicationRecord
  belongs_to :haircut

  validates :date, presence: true
  validates :time, presence: true
  validates :client_name, presence: true
  validates :client_email, presence: true
  validates :phone_number, presence: true
end
