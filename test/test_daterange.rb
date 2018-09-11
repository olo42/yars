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

    assert_equal(result.count, 31)
  end
end
