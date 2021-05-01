class Vehicle < ApplicationRecord
  validates :name, :year, :brand, :status, :crew, presence: true

  has_many :schedules, as: :schedulable
end
