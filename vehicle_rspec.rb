require 'rspec'
require_relative 'vehicle'

describe 'Vehicle' do
  it "should create a new Vehicle" do
    expect{ Vehicle.new(1995) }.to_not raise_error
  end
  it "has a year" do
    a_vehicle = Vehicle.new(1995)
    expect(a_vehicle.year).to be_a Fixnum
  end
  it "can set the year" do
    a_vehicle = Vehicle.new(1996)
    expect(a_vehicle.year).to eq 1996
  end
  it "has lights that are off" do
    a_vehicle = Vehicle.new(1995)
    expect(a_vehicle.lights_on?).to be false
  end
  it "has has lights that can turn on and off" do
    a_vehicle = Vehicle.new(1995)
    a_vehicle.lights_on = true
    expect(a_vehicle.lights_on?).to be true
  end
  it "has signal lights that are off" do
    a_vehicle = Vehicle.new(1995)
    expect(a_vehicle.signal_on?).to be false
  end
  it "can turn signal lights left, right, and off" do
    a_vehicle = Vehicle.new(1995)
    a_vehicle.signal_left
    expect(a_vehicle.signal_on?).to eq "left"
    a_vehicle.signal_right
    expect(a_vehicle.signal_on?).to eq "right"
    a_vehicle.signal_off
    expect(a_vehicle.signal_on?).to be false
  end



end
