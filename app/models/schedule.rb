class Schedule < ApplicationRecord
  belongs_to :schedulable, polymorphic: true
end
