require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @players = players
    @board = Array.new(length)
    @players_position = {}
    @dice = Die.new
    @finished = false
    @players.each do |player|
      @players_position[player] = 0
    end
  end
  
  def winner(player)
      puts "P L A Y E R  #{player}  H A S  W O N !".center(@board.length*2)
  end
  

  def advance_player!
    until finished? 
      clear_screen!
      move_to_home!
      @players.each do |player|
        @players_position[player] += @dice.roll
         if @players_position[player] >= @board.length
          print_board
          winner(player)
          return
        end
      end
      print_board
      sleep (0.75)
    end
  end

  def finished?
    @finished
  end

  def print_board
    puts " R U B Y  R A C E R ".center(@board.length*2)
    @players.each do |player|
      @board.length.times do |index|
       print '| '
       print "#{player}" if @players_position[player] == index
     end
     puts
   end
    puts " R U B Y  R A C E R  R U B Y  R A C E R  R U B Y  R A C E R  ".center(@board.length*2)
 end
end

players = ['A', 'B','C', 'D',]


game = RubyRacer.new(players)
game.advance_player!

