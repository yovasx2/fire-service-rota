class User < ApplicationRecord
  SKILLS = ['Crew commander', 'Driver', 'Firefighter']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, :role, presence: true
  validates :skills, presence: true, if: -> { role == 'firefighter' }
  validates :email, uniqueness: true
end
