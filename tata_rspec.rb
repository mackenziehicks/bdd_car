require 'rspec'
require_relative 'tata'

describe Tata do

  it "should be a thing" do
    expect{Tata.new(2005)}.to_not raise_error
  end

  it "can accelerate" do
    my_tata = Tata.new(4002)
    my_tata.accelerate
    expect(my_tata.speed).to be > 0
  end

  it "can brake" do
    my_tata = Tata.new(2342)
    my_tata.accelerate
    old_speed = my_tata.speed
    my_tata.brake
    expect(my_tata.speed).to be < old_speed
  end

end
