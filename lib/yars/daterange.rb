class DateRange

  def self.getDates(startDate, endDate, weekday=nil)
    dates = Array.new

    (startDate..endDate).each do |date|
      if(!weekday.nil? && date.wday != weekday)
        next
      else
        dates.push(date)
      end
    end

    return dates
  end
  
end
