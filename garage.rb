require 'rspec'
require_relative 'tata'
require_relative 'tesla'
require_relative 'toyota'

my_cars=[]
my_cars.push(my_tata = Tata.new(1904))
my_cars.push(my_tata_two = Tata.new(2017))

my_cars.push(my_tesla = Tesla.new(1202))
my_cars.push(my_tesla_two = Tesla.new(2044))

my_cars.push(my_toyota = Toyota.new(2999))
my_cars.push(my_toyota_two = Toyota.new(1999))


my_cars_years_alpha = my_cars.sort do |car_a, car_b| [car_a.class.to_s, car_a.year.to_s] <=> [car_b.class.to_s, car_b.year.to_s]
end

my_cars_years_alpha.each { |car| puts car.class.to_s + " " + car.year.to_s }
