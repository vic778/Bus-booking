class Bus < ApplicationRecord
  belongs_to :agence

  validates :name, presence: true
  validates :model, presence: true
  validates :boarding, presence: true
  validates :destination, presence: true
  validates :no_of_seats, presence: true
  validates :time, presence: true
end
