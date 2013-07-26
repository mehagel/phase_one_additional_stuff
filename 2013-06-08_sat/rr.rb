require_relative 'racer_utils'
 
class RubyRacer
  attr_reader :players, :length
 
  def initialize(players, length = 30)
    @players = players
    @length  = length
    make_track
    @current_location = []
    @players.times do |current_player|
      @current_location[current_player] = 0 
    end
    @dice = Die.new
    advance_players!
  end
 
  def make_track
    practice_track = []
    total_spaces = @players*@length
    total_spaces.times do |x_axis|
      practice_track << " "
    end
 
    @track  = Array.new(@players) { practice_track.shift(@length) }
 
    @players.times do |current_player|
      @track[current_player][0] = "X"
    end
    print_track
  end
  
  # Returns +true+ if one of the players has reached 
  # the finish line, +false+ otherwise
  def finished?
    @players.times do |this_player|
      # winner(this_player) if @current_location[this_player] == @length-1
      return this_player if @current_location[this_player] == @length-1
    end
    return nil
  end
  
  # Returns the winner if there is one, +nil+ otherwise
  # def winner this_player
  #   this_player
  # end
  
  # Rolls the dice and advances +player+ accordingly
  def advance_players!
    until finished? != nil
      @players.times do |current_player|
        new_location = @current_location[current_player] + @dice.roll
        unless new_location > @length-1 || finished? != nil
          @track[current_player][@current_location[current_player]] = "."
          @current_location[current_player] = new_location
          @track[current_player][new_location] = ">"
        end
      end
      print_track
      sleep 1
    end
  end
  
  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should use the "reputs" helper to print over
  # the previous board
  def print_track
    clear_screen!
    puts "RACE!        GO FAST!!!111one"
    liner = "________________"
    @length.times do
      liner += "__"
    end
    puts liner
    @players.times do |x_position|
      print "Player #{x_position} "
      @length.times do |y_position|
        print @track[x_position][y_position] + "|"
      end
      puts "| FINISH"
    end
    puts liner
  end
end
 
 
 
game = RubyRacer.new(5)
