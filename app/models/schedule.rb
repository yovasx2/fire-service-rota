class Schedule < ApplicationRecord
  validate :is_start_at_valid?, :is_end_at_valid?, on: :crreate

  belongs_to :schedulable, polymorphic: true

  # after_create :calculate_vehicle_availability, if: :for_user?
  # after_destroy :calculate_vehicle_availability, if: :for_user?

  default_scope { order(:start_at) }

  def is_station_manager?
    self.role == STATION_MANAGER
  end

  def is_firefighter?
    self.role == FIREFIGHTER
  end

  def is_start_at_valid?
    unless Time.now.beginning_of_hour.before?(start_at)
      errors.add(:start_at, "can't be in the past hours blocks")
    end
  end

  def is_end_at_valid?
    unless start_at.before?(end_at)
      errors.add(:end_at, "can't be before start_at")
    end
  end

  def for_user?
    schedulable_type == 'User'
  end

  # def calculate_vehicle_availability
  #   vehicle = Vehicle.first
  #   vehicle.schedules.first(start_at: start_at)
  # end
end
