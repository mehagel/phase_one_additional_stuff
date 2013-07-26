require 'Matrix'

class SudokuGame
  attr_accessor :board

  def initialize(string)
    final = []
    array_integers = string.split('').map { |string| string.to_i }
    9.times { final << array_integers.shift(9)}
    @board = Matrix.rows(final)
    print_board
  end

  def game_finished?
    board_array = []
    @board.map { |cell| board_array << cell}
    !board_array.include?(0)
  end

  def block(row, col)
    breakdowns = { 0 => (0..2),
     1 => (3..5),
     2 => (6..8)  }
     row_index = breakdowns[row / 3]
     col_index = breakdowns[col / 3]
     @board.minor(row_index, col_index).to_a.flatten!
   end

   def print_board
    x = ""
    array_board = @board.to_a
    array_board.each do |row|
      row.each do |cell|
        x << "#{cell.to_s} "
      end
      puts x
      x = ""
    end
    puts
  end

  def sudoku_solver_mulitply_possibilities
    @temp_board = @board
    possibilities = [] 
    did_a_zero_have_two_possibility = true
    while did_a_zero_have_two_possibility == true
      did_a_zero_have_two_possibility = false
      @temp_board.each_with_index do |cell, row, col|
        if cell == 0
          possibilities = (1..9).to_a - @temp_board.row(row).to_a - @temp_board.column(col).to_a - block(row, col)
          if possibilities.length == 2
            temp_board_array = @temp_board.to_a
            temp_board_array[row][col] = possibilities[0]
            @temp_board = Matrix.rows(temp_board_array)
            temp_sudoku_solver_one_possibility
            did_a_zero_have_two_possibility = true
          end
        end
      end
    end
  end

  def temp_sudoku_solver_one_possibility
    possibilities = []
    did_a_zero_have_one_possibility = true
    while did_a_zero_have_one_possibility == true
      did_a_zero_have_one_possibility = false
      @temp_board.each_with_index do |cell, row, col|
        if cell == 0
          possibilities = (1..9).to_a - @temp_board.row(row).to_a - @temp_board.column(col).to_a - block(row, col)
          puts possibilities.inspect
          if possibilities.length == 1
            temp_board_array = @temp_board.to_a
            temp_board_array[row][col] = possibilities[0]
            @temp_board = Matrix.rows(temp_board_array)
            did_a_zero_have_one_possibility = true
          end
        end
      end
    end
    if game_finished?
      puts "finished board:"
      # temp_print_board
    else
      #sudoku_solver_mulitply_possibilities
    end    
    temp_print_board
    @board
  end

  def temp_print_board
    x = ""
    array_board = @temp_board.to_a
    array_board.each do |row|
      row.each do |cell|
        x << "#{cell.to_s} "
      end
      puts x
      x = ""
    end
    puts
  end


  def sudoku_solver_one_possibility
    possibilities = []
    did_a_zero_have_one_possibility = true
    while did_a_zero_have_one_possibility == true
      did_a_zero_have_one_possibility = false
      @board.each_with_index do |cell, row, col|
        if cell == 0
          possibilities = (1..9).to_a - @board.row(row).to_a - @board.column(col).to_a - block(row, col)
          if possibilities.length == 1
            board_array = @board.to_a
            board_array[row][col] = possibilities[0]
            @board = Matrix.rows(board_array)
            did_a_zero_have_one_possibility = true
          end
        end
      end
    end
    unless game_finished?
      sudoku_solver_mulitply_possibilities
    end
    # print_board
    @board
  end
end


game = SudokuGame.new('000075400000000008080190000300001060000000034000068170204000603900000020530200000')
sleep(0.5)
game.sudoku_solver_one_possibility
