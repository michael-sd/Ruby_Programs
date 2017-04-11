class Motorbike
  attr_accessor :brand, :model

  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def display_bike
    puts "Displaying the #{@brand} #{@model}"
  end

end

class Garage
  
  def initialize
    @motorbikes = []
    @motorbikes << Motorbike.new(:Yamaha, :R1)
    @motorbikes << Motorbike.new(:Ducati, :Panigale)
    @motorbikes << Motorbike.new(:Triumph, :Daytona)
    @motorbikes << Motorbike.new(:Kawasaki, :Ninja)
  end

  def tour
    @motorbikes.each do |motorbike|
      motorbike.display_bike
    end
  end

end

garage = Garage.new
garage.tour
