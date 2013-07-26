require_relative 'racer_utils'

class RubyRacer
  attr_reader  :drivers, :length

  def initialize(drivers, length=30)
    @drivers  =   drivers
    @track    = Array.new(length)
    @drivers_position = {}
    @dice     = Die.new
    @finished = false
      @drivers.each do |driver|
        @drivers_position[driver] = 0
    end
  end

  def advance_driver!
    until finished?
      clear_screen!
      move_to_home!
      @drivers.each do |driver|
        @drivers_position[driver] += @dice.roll
          if @drivers_position[driver] >= @track.length
            print_track
            winner(driver)
            return
          end
        end
        print_track
        sleep(0.50)
      end
    end

    def finished?
      @finished
    end

    def winner(driver)
      puts "D R I V E R  #{driver}  H A S  W O N !".center(@track.length*2)
    end
  
  def print_track
    puts " R U B Y  R A C E R ".center(@track.length*2)
    @drivers.each do |driver|
      @track.length.times do |index|
        print ' |  '
          print "#{driver}" if @drivers_postion[driver] ==  index
      end
      puts
    end
      puts " R U B Y  R A C E R  R U B Y  R A C E R  R U B Y  R A C E R  ".center(@track.length*2)
  end
end

drivers = ['A','B','C']

race = RubyRacer.new(drivers)
race.advance_driver!


