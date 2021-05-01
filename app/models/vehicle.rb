class Vehicle < ApplicationRecord
  CREW = {
    'crew commander': 1,
    'driver': 1,
    'firefighter': 2
  }.freeze

  validates :name, :year, :brand, :status, :crew, presence: true
end
