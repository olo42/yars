require "./lib/yars/location.rb"

class Appointment
  attr_accessor :date

  def initialize(date)
    @date = date
  end

  def location=(location)
    if (!location.available?(@date))
      raise raise ArgumentError, "Location is not available on @date"
    end
    @location = location
  end
end
