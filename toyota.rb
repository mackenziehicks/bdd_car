require 'rspec'
require_relative 'car'

class Toyota < Car

  def accelerate
    @speed = @speed + 7
  end

  def brake
    @speed = @speed - 5
  end

end
