require 'rspec'
require_relative 'vehicle'

class Car < Vehicle
  def initialize (year)
    super(year)
    @wheels = 4
    @speed = 0
  end

  def wheels
    @wheels
  end

  def speed
    @speed
  end

  def get_info
    "speed: " + @speed.to_s + "wheels: " + @wheels.to_s
  end

end
