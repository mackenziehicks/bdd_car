require 'rspec'
require_relative 'tesla'

describe Tesla do
  it "should be a thing" do
    expect{Tesla.new(2056)}.to_not raise_error
  end

  it "can accelerate" do
    my_tesla = Tesla.new(1892)
    my_tesla.accelerate
    expect(my_tesla.speed).to be > 0
  end

  it "can brake" do
    my_tesla = Tesla.new(2016)
    my_tesla.accelerate
    old_speed = my_tesla.speed
    my_tesla.brake
    expect(my_tesla.speed).to be < old_speed
  end

end
