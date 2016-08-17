require 'rspec'
require_relative 'car'

describe Car do
  it "should be a thing" do
    expect{Car.new(1994)}.to_not raise_error
  end
  it "has a year" do
    a_car = Car.new(1994)
    expect(a_car.year).to be_a Fixnum
  end

  it "should have 4 wheels" do
    expect(Car.new(2006).wheels).to eq 4
  end
  it "should have a speed of 0" do
    expect(Car.new(2016).speed).to eq 0
  end

  it "should be able to give its freaking info" do
    my_car = Car.new(2342)
    expect(my_car.get_info).to include "speed: "
  end

end
