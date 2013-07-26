class BoggleBoard
  def initialize
    @board_grid = Array.new(4) {Array.new(4, "_")}
  end
  
  def shake!
   alphabet = ("A".."Z").to_a
   
   shuf_alpha = []
   16.times do
     shuf_alpha << alphabet.sample
   end
   
   @board_grid = Array.new(4) { shuf_alpha.shift(4).to_a }
   return @board_grid
   
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
p board
