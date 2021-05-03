# require 'rubygems'           #so it can load gems
# require 'factory_bot_rails' #so it can run in development

User.connection.truncate(User.table_name)
Vehicle.connection.truncate(Vehicle.table_name)
Schedule.connection.truncate(Schedule.table_name)

(1..2).each do |i|
  FactoryBot.create(:station_manager, email: "sm#{i}@fsr.com")
end

(1..10).each do |i|
  firefighter = FactoryBot.create(:firefighter, email: "ff#{i}@fsr.com")
  FactoryBot.create_list(:schedule, rand(38) + 10, schedulable: firefighter)
end

FactoryBot.create(:vehicle)
