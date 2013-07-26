class BoggleBoard
  def initialize
    @board_grid = Array.new(4) {Array.new(4, "_")}
  end
  
  def shake!

   dice=[ "AAEEGN",
    "ELRTTY",
    "AOOTTW",
    "ABBJOO",
    "EHRTVW",
    "CIMOTU",
    "DISTTY",
    "EIOSST",
    "DELRVY",
    "ACHOPS",
    "HIMNQU",
    "EEINSU",
    "EEGHNW",
    "AFFKPS",
    "HLNNRZ",
    "DEILRX"]
    
    @board_grid = dice.map{|die| die.split('').sample}.shuffle.each_slice(4).to_a

  end

  def to_s
    board_lines = []
    @board_grid.each do |line|
      board_lines << line.join
    end 
    board_lines.join("\n")
  end

end

board = BoggleBoard.new
board.shake!
puts board
