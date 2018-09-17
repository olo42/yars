require "./lib/yars/appointment.rb"
require "./lib/yars/location.rb"
require "./lib/yars/daterange.rb"
require "minitest/autorun"
require "date"

class TestAppointment < Minitest::Test

  def setup
    @date = Date.new(2018,10,23)
  end

  def test_appointment_has_date
    appointment = Appointment.new(@date)

    assert_equal(appointment.date, @date)
  end 

  def test_appointment_has_location
    appointment = Appointment.new(@date)
    appointment.location = Location.new("A Location")

    assert_equal("A Location", appointment.location.name)
  end

  def test_checks_availability_when_adding_location
    location = Location.new("Brunstorf")
    location.blocked_dates = 
      DateRange.new(Date.new(2018, 1, 1), Date.new(2018, 1, 5))

    appointment = Appointment.new(Date.new(2018, 1, 4))

    exception = assert_raises ArgumentError do
      appointment.location = location
    end
    assert_equal("Location not available on 2018-1-4!", exception.message)
  end

end
