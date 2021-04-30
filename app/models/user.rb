class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, :skills, presence: true
  validates :email, uniqueness: true
end
