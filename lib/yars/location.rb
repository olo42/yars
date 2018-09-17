

class Location
  attr_accessor :name, :blocked_dates

  def initialize(name)
    @name = name
  end

  def available?(date)
    if (@blocked_date.nil?)
      true
    else
      !@blocked_dates.include?(date)
    end
  end
end
