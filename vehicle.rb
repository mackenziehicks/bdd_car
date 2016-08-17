class Vehicle
  def initialize(year)
    @year = year
    @lights_on = false
    @signal = false
  end
   def lights_on=(x)
     @lights_on = x
   end
   def lights_on?
     @lights_on
   end
  def signal_right
    @signal = "right"
  end
  def signal_left
    @signal = "left"
  end
  def signal_off
    @signal = false
  end
   def signal_on?
     @signal
   end
  def year
    @year
   end
end
