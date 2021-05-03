module SchedulesHelper
  def format_multiple_availabilities(firefighters)
    availabilities = {}
    firefighters.each do |firefighter|
      availabilities[firefighter.id] = format_availabilities(firefighter.schedules)
    end
    return availabilities
  end

  def format_availabilities(schedules)
    availability = Array.new(24, '❌')
    schedules.each do |schedule|
      puts schedule.inspect
      availability[schedule.start_at.hour] = '✅'
    end
    return availability
  end
end
