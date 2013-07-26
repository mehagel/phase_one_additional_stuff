
class Vehicle
    def initialize(args)
        @color = args[:color]
        @wheels = args[:wheels]
    end

    def brake
        @status = :stopped  
    end

    def needs_gas?
        return [true,true,false].sample
    end
end

class Car < Vehicle
    @@WHEELS = 4
    def initialize(args)
        super
        @wheels = @@WHEELS
    end
    def drive
        @status = :driving
    end
end

class Bus < Vehicle
    attr_reader :passengers
    def initialize(args)
        super
        @num_seats = args[:num_seats]
        @fare = args[:fare]
        @passengers=[]
    end
    def drive
        return self.brake if stop_requested?
        @status = :driving
    end
    def admit_passenger(passenger,money)
        @passengers << passenger if money > @fare
    end

    def stop_requested?
        return [true,false].sample
    end
end


class Motorbike < Vehicle
    @@WHEELS = 2
    def initialize(args)
        super
        @wheels = @@WHEELS
    end

    def drive
        @status = :driving
        @speed = :fast
    end

    def weave_through_traffic
        @status = :driving_like_a_crazy_person
    end
end



my_car=Car.new({:color => "lime green"})
p my_car
p my_car.drive
p my_car.brake
p my_car.needs_gas?
puts


my_bus=Bus.new({:color => "yellow", :wheels => 10, :num_seats=> 25, :fare => 2})
p my_bus
p my_bus.drive
p my_bus.brake
p my_bus.admit_passenger(1,3)
p my_bus.stop_requested?
p my_bus.needs_gas?
puts


my_motorcycle=Motorbike.new({:color => "red"})
p my_motorcycle
p my_motorcycle.drive
p my_motorcycle.brake
p my_motorcycle.needs_gas?
p my_motorcycle.weave_through_traffic
puts


#The three classes (Car, Bus, Motorcycle) all inherit (aka Inheritance) several 
# methods and variables from the parent class (Vehicle). The methods they inherit
# from the parent class is brake and need_gas?. The variables they inherit are 
# color and wheels although the wheel variables are overrided at the child class 
# in Car and Motorcycle
