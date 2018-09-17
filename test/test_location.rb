require "./lib/yars/location.rb"
require "./lib/yars/daterange.rb"
require "date"
require "minitest/autorun"

class TestLocation < Minitest::Test
  def test_location_has_name
    location = Location.new("My Location")

    assert_equal("My Location", location.name)
  end

  def test_location_available?
    location = Location.new("Büchen Süd")
    location.blocked_dates = 
      DateRange.new(Date.new(2018, 1, 15), Date.new(2018, 1, 30))

    result = location.available?(Date.new(2018, 1, 20))

    assert_equal(false, result)
  end
end
