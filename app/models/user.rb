class User < ApplicationRecord
  ROLES = [ STATION_MANAGER = 'station manager', FIREFIGHTER = 'firefighter' ].freeze
  SKILLS = ['Crew commander', 'Driver', 'Firefighter']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, :role, presence: true
  validates :skills, presence: true, if: :is_firefighter?
  validates :email, uniqueness: true


  def is_station_manager?
    self.role == STATION_MANAGER
  end

  def is_firefighter?
    self.role == FIREFIGHTER
  end
end
