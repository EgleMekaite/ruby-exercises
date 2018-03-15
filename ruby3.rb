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
        puts "The car has #{doors} doors, #{cylinders} cylinders and its color is #{color}"
    end
end

def read_file(file_name)
    File.open(file_name, 'r' )do |f|
    cars = []
    while line = f.gets
            attributes = line.split('|')
            car = Car.new(attributes[0], attributes[1], attributes[2])
            cars.push(car)   
    end
    return cars
end
end

$cars_array = read_file("ruby3.txt")

def new_set
    @set1=[]
    @set2=[]
    $cars_array.map do |car|
        if car.doors.to_i == 2
            @set1.push(car)
        elsif car.doors.to_i == 4
            @set2.push(car)
        end
    end
end

new_set
puts "Set1:"
puts @set1[0].describe
puts @set1[1].describe
puts @set1[2].describe
puts "Set2:"
puts @set2[0].describe
puts @set2[1].describe

def change_colors(array)
    array.each do |car|
        if car.doors.to_i == 2
            if car.color == 'prime'
                car.color='red'
            else
                car.color='green'
            end
        else
            if car.color == 'white'
                car.color='black'
            else
                car.color='grey'
            end
        end
    end
end

change_colors(@set1)
change_colors(@set2)

puts "** After changing colors **"
puts "Set1:"
puts @set1[0].color
puts @set1[1].color
puts @set1[2].color
puts "Set2:"
puts @set2[0].color
puts @set2[1].color