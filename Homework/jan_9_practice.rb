# Class = Car
#   def initialize(make, model, color)
#     @make = make
#     @model = model
#     @color = color
#   end
#   def print_color
#     puts @color
#   end
# end

# Class Fruit
#   def initialize(name)
#       @name = name 
#   end
#   def print_name
#       puts @name
#   end
# end

# Class Apple < Fruit
# end

Class Car
  attr_accessor :make, :model, :color
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end
  def car_details
    puts "This is a #{@make} #{@model} painted #{@color}"
  end
end

Class Garage
  def initialize
    @cars = []
  end

  def add_car(car)
    @ cars << car
  end

  def remove_car(make, model)
    @cars.delete_if {|car| car.make == make && car.model == model}
  end

  def list_car
    @cars.map(&:info)
  end

  def find_cars_by_color(color)
    @cars.select { |car| car.color == color}.map(&:info)
  end
end
    


