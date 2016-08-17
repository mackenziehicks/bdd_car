require 'rspec'
require_relative 'garage'

describe "Garage" do
  it "pushes its info into an array" do
    my_tata = Tata.new(2343)
    my_cars = []
    expect(my_cars.push(my_tata)).to include my_tata
  end

  it "pushes its info into an array" do
    my_tesla = Tesla.new(2000)
    my_cars = []
    expect(my_cars.push(my_tesla)).to include my_tesla
  end

  it "pushes its info into an array" do
    my_toyota = Toyota.new(1992)
    my_cars = []
    expect(my_cars.push(my_toyota)).to include my_toyota
  end

  it "sorts the array by model alphabetically and year numerically" do
    my_cars = []
    my_tata = Tata.new(1904)
    my_tata_two = Tata.new(2017)
    my_tesla = Tesla.new(1202)
    my_tesla_two = Tesla.new(2044)
    my_toyota = Toyota.new(2999)
    my_toyota_two = Toyota.new(1999)
    my_cars.push(my_tata, my_tata_two,my_tesla,my_tesla_two,my_toyota,my_toyota_two)
    my_cars_years_alpha = my_cars.sort do |car_a, car_b| [car_a.class.to_s, car_a.year.to_s] <=> [car_b.class.to_s, car_b.year.to_s]
    end
    expect(my_cars_years_alpha).to eq [my_tata,my_tata_two,my_tesla,my_tesla_two,my_toyota_two,my_toyota]
  end

end
