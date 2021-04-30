class User < ApplicationRecord
  validates :first_name, :last_name, :email, :skills, presence: true
  validates :email, uniqueness: true
end
