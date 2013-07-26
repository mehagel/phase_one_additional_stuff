require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @players = players
    @board = Array.new(length)
    @players_position = {}
    @dice = Die.new

    @players.each do |player|
      @players_position[player] = 0
    end
  end
  
  # Returns the winner if there is one, +nil+ otherwise
  def winner(player)
    puts "Player #{player} has won!"
  end
  
  # Rolls the dice and advances +player+ accordingly
  def advance_player!
    until finished? 
      clear_screen!
      @players.each do |player|
        @players_position[player] = @players_position[player] + @dice.roll
        if @players_position[player] >= @board.length
          winner(player)
          print_board
          return
        end
      end
      print_board
      sleep 1
    end
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should use the "reputs" helper to print over
  # the previous board
  def print_board
    @players.each do |player| 
      @board.length.times do |index|
       print '| '
       if @players_position[player] == index
         print 'x'
       end
     end
     puts
   end
 end
end

players = ['a', 'b','c', 'd', 'e', 'Mark']


game = RubyRacer.new(players)
game.advance_player!

