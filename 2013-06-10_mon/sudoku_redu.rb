class Sudoku

 def initialize(string)
  @board_grid = Array.new(9) {Array.new.shift(9, string)}


 end








end

string="619030040270061008000047621486302079000014580031009060005720806320106057160400030"
board=Sudoku.new string
p board
