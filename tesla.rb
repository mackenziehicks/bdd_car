require 'rspec'
require_relative 'car'

class Tesla < Car

  def accelerate
    @speed = @speed + 10
  end

  def brake
    @speed = @speed - 7
  end

end
