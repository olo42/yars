require "./lib/yars/daterange.rb"
require "minitest/autorun"
require "date"

class TestDateRange < Minitest::Test
  def setup
  end

  def test_get_dates_returns_dates_of_range
    startDate = Date.new(2018, 1, 1)
    endDate = Date.new(2018, 1, 31)

    result = DateRange.getDates(startDate, endDate)

    assert_equal(31, result.count)
  end

  def test_returns_all_weekdates_from_range
    startDate = Date.new(2018, 1, 1)
    endDate = Date.new(2018, 1, 31)
    
    # As per ISO 8601 Monday is the first day of the week
    monday = 1 

    result = DateRange.getDates(startDate, endDate, monday)

    assert_equal(5, result.count) # Since Jan 2018 has five Mondays
  end 
end
