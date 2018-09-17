class DateRange
  def initialize(startDate, endDate)
    @start = startDate
    @end = endDate
  end

  def Dates()
    return @start..@end
  end

  def Weekdays(weekday)
    return Dates().find_all { |date| date.wday == weekday }
  end

  def include?(date)
    (@start..@end).include?(date)
  end
end
