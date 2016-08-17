require 'rspec'
require_relative 'car'

class Tata < Car

  def accelerate
    @speed = @speed + 2
  end

  def brake
    @speed = @speed - 1.25
  end

end
