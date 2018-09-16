require "./lib/yars/daterange.rb"
require "minitest/autorun"
require "date"

class TestDateRange < Minitest::Test

  def setup
    @startDate = Date.new(2018, 1, 1)
    @endDate = Date.new(2018, 1, 31)
  end

  def test_dates_returns_dates_of_range
    
    daterange = DateRange.new(@startDate, @endDate)

    result = daterange.Dates

    assert_equal(31, result.count)
  end

  def test_dates_range_starts_with_given_start_date

    daterange = DateRange.new(@startDate, @endDate)

    result = daterange.Dates

    assert_equal(@startDate, result.first)
  end

  def test_dates_range_ends_with_given_end_date

    daterange = DateRange.new(@startDate, @endDate)

    result = daterange.Dates

    assert_equal(@endDate, result.last)
  end

  def test_returns_all_weekdays_from_range
    
    daterange = DateRange.new(@startDate, @endDate)
    
    # Per ISO 8601 Monday is the first day of the week
    monday = 1 

    result = daterange.Weekdays(monday)

    assert_equal(5, result.count) # Jan 2018 has five Mondays
  end 
end
