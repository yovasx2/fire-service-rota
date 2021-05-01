# require 'rubygems'           #so it can load gems
# require 'factory_bot_rails' #so it can run in development

User.destroy_all
FactoryBot.create(:station_manager, email: 'sm1@fsr.com')
FactoryBot.create(:station_manager, email: 'sm2@fsr.com')

FactoryBot.create(:firefighter, email: 'ff1@fsr.com')
FactoryBot.create(:firefighter, email: 'ff2@fsr.com')
FactoryBot.create(:firefighter, email: 'ff3@fsr.com')
FactoryBot.create(:firefighter, email: 'ff4@fsr.com')
FactoryBot.create(:firefighter, email: 'ff5@fsr.com')
FactoryBot.create(:firefighter, email: 'ff6@fsr.com')
FactoryBot.create(:firefighter, email: 'ff7@fsr.com')
FactoryBot.create(:firefighter, email: 'ff8@fsr.com')
FactoryBot.create(:firefighter, email: 'ff9@fsr.com')
FactoryBot.create(:firefighter, email: 'ff10@fsr.com')

Vehicle.destroy_all
FactoryBot.create(:vehicle)
