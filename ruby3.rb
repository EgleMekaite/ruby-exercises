class Car
    def initialize (doors, cylinders, color)
        @doors = doors
        @cylinders = cylinders
        @color = color
    end

    attr_accessor :doors
    attr_accessor :cylinders
    attr_accessor :color

    def describe
        "The car has #{doors} doors, #{cylinders} cylinders and its color is #{color}"
    end

    def num_doors?
        @doors.to_i == 2 ? @num_doors = 2 : @num_doors = 4
    end

    def change_color
        case @num_doors
        when 2
            @color = 'green' if @color == 'prime'
            @color = 'red' if @color == 'white'
        else
            @color = 'black' if @color == 'white'
            @color = 'grey' if @color == 'yellow'
        end
    end
end

def create_from_file(file_name)
    File.open(file_name, 'r' )do |f|
    cars = []
        while line = f.gets
                attributes = line.strip.split('|')
                car = Car.new(attributes[0], attributes[1], attributes[2])
                cars << car   
        end
        cars
    end
end

$cars_array = create_from_file("ruby3.txt")

def sort_by_num_doors(array)
    @two_door_cars = []
    @four_door_cars = []
    array.map { |car| car.num_doors? == 2 ? @two_door_cars << car : @four_door_cars << car }
end

sort_by_num_doors($cars_array)

puts "Cars with two doors:"
puts @two_door_cars[0].describe
puts @two_door_cars[1].describe
puts @two_door_cars[2].describe
puts "Cars with four doors:"
puts @four_door_cars[0].describe
puts @four_door_cars[1].describe

@two_door_cars.map {|car| car.change_color}
@four_door_cars.map {|car| car.change_color}

puts "** After changing colors the colors of the cars are **"
puts "Cars with two doors:"
puts @two_door_cars[0].color
puts @two_door_cars[1].color
puts @two_door_cars[2].color
puts "Cars with four doors:"
puts @four_door_cars[0].color
puts @four_door_cars[1].color