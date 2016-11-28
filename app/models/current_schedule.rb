
class CurrentSchedule
  attr_accessor :day, :period, :week

  def initialize
    self.day = get_day
    self.period = get_period
    self.week = get_week

  end

  def get_day
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    current_day_number = Time.now.wday
    weekdays[current_day_number]
  end

  def get_period
    now = Time.now.strftime("%H%M").to_i #Stringify the time to look something like 1325
    case now #Finish this case statement for HW
    when 815...827
      return "0"
    when 828...913
      return "1"
    when 914...1010
      return "2"
    when 1010...1500
      return "3"
    else
      return "Out of school hours"
    end
  end

  def get_week
    week = Time.now.strftime("%U").to_i #Stringify the time to look something like 1325
    week % 2 == 0 ? "B" : "A"
  end

end
