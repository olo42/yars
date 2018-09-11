class DateRange
  def self.getDates(startDate, endDate)
    dates = Array.new

    (startDate..endDate).each do |date|
      dates.push(date)
    end

    return dates
  end
end
