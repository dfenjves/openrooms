class ViewRoom
  attr_accessor :day, :period, :rooms

OPENROOMS = {"Monday A 1" => [501, 412, 404],
  "Monday A 2" => [404, 501,666],
  "Monday A 3" => [123,456,789] }

  def initialize (day, period)
    self.day = day
    self.period = period
    dayperiod = day + " " + period
    OPENROOMS.each { |key, value| key.match(dayperiod)
      self.rooms = value }
  end

end
