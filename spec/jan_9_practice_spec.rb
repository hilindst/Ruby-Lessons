require 'rspec'
require_relative '../Homework/jan_9_practice'

# describe Car do
#   describe '#print_color' do
#     it 'prints the color of the car' do
#       car = Car.new('red')

#       expect(car.print_color).to eq('red')
#     end
#   end
# end

# describe Fruit do
#   describe '#print_name' do
#     it 'prints the name of the fruit' do
#       fruit = Apple.new('apple')

#       expect(apple.print_name).to eq('apple')
#     end
#   end
# end

describe Car do
  car = Car.new('Toyota', 'Corolla', 'Blue')

  it 'should return correct make' do
    expect(car.make).to eq('Toyota')
  end

  it 'should return correct model' do
    expect(car.model).to eq('Corolla')
  end

  it 'should return correct color' do
    expect(car.color).to eq('Blue')
  end

  it 'should return correct info' do
    expect(car.info).to eq('Make: Toyota, Model: Corolla, Color: Blue')
  end
end

describe Garage do
  garage = Garage.new
  car1 = Car.new('Toyota', 'Corolla', 'Blue')
  car2 = Car.new('Honda', 'Civic', 'Red')

  before(:each) do
    garage.add_car(car1)
    garage.add_car(car2)
  end

  it 'should list all cars' do
    expect(garage.list_cars).to eq([car1.info, car2.info])
  end

  it 'should find cars by color' do
    expect(garage.find_cars_by_color('Red')).to eq([car2.info])
  end

  it 'should remove a car' do
    garage.remove_car('Toyota', 'Corolla')
    expect(garage.list_cars).not_to include(car1.info)
  end
end
