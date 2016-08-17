require 'rspec'
require_relative 'toyota'

describe Toyota do
  it "should be a thing" do
    expect{Toyota.new(2056)}.to_not raise_error
  end

  it "can accelerate" do
    my_toyota = Toyota.new(1892)
    my_toyota.accelerate
    expect(my_toyota.speed).to be > 0
  end

  it "can brake" do
    my_toyota = Toyota.new(2016)
    my_toyota.accelerate
    old_speed = my_toyota.speed
    my_toyota.brake
    expect(my_toyota.speed).to be < old_speed
  end

end
