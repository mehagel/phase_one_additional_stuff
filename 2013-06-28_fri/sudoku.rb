
class Sudoku

  def initialize(board_string = "003020600900305001001806400008102900700000008006708200002609500800203009005010300")
    @sudoku_board = Board.new(board_string)
  end

  def solve!

    until @sudoku_board.solved?
      @sudoku_board.update_board!
    end

    puts @sudoku_board

  end

  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  # def board
  #   puts @board
  # end
end

class Board

  def initialize(string_of_sudoku_board)
    @board_length = Math.sqrt(string_of_sudoku_board.length).to_i
    @board = Array.new(@board_length){Array.new(@board_length)}
    @box_length = Math.sqrt(@board_length).to_i
    populate_board(string_of_sudoku_board)
  end

  def populate_board(string_of_sudoku_board)
    @board_length.times do |row|
      @board_length.times do |col|
        space_index = row * @board_length + col
        @board[row][col] = Space.new(string_of_sudoku_board[space_index])
      end
    end
    puts self
  end

  def update_board! #NOTE: if answer is shown by update_all_boxes, it might look like the current rows update was wrong
    update_all_rows!
    update_all_columns!
    update_all_boxes!
  end

  def update_all_rows!
    @board_length.times do |row_index|
      update_row!(row_index)
    end
  end

  def update_row!(row_index)
    used_row_values = []
    @board[row_index].each { |space| used_row_values << space.solution if space.solved }
    @board[row_index].each { |space| space.reduce_possible_solutions(used_row_values) unless space.solved } 
  end

  def update_all_columns!
    @board_length.times do |column_index|
      update_column!(column_index)
    end
  end

  def update_column!(column_index)
    used_column_values = []

    @board_length.times do |row_index|
      space = @board[row_index][column_index]
      used_column_values << space.solution if space.solved
    end

    @board_length.times do |row_index|
      space = @board[row_index][column_index]
      space.reduce_possible_solutions(used_column_values) unless space.solved
    end

  end

  def update_all_boxes!
    current_row_index = 0
    current_column_index = 0

    while current_column_index < @board_length

      update_box!(current_row_index, current_column_index)
      current_row_index+=@box_length

      if current_row_index >= @board_length
        current_row_index = 0
        current_column_index += @box_length
      end

    end
  end

  def update_box!(row_index, column_index)
    all_box_spaces_indicies = get_box_spaces(row_index, column_index)
    used_box_values = []
    all_box_spaces_indicies.each { |row, column| used_box_values << @board[row][column].solution if @board[row][column].solved }
    all_box_spaces_indicies.each { |row, column| @board[row][column].reduce_possible_solutions(used_box_values) unless @board[row][column].solved }
  end

  def get_box_spaces(row_index, column_index)
    box_row_index, box_column_index = box_indicies_from_space(row_index, column_index)
    box_space_indicies = []
    row_start = box_row_index * @box_length
    column_start = box_column_index * @box_length

    row_start.upto(row_start + (@box_length-1)) do |internal_box_row_index|
      column_start.upto(column_start + (@box_length-1)) do |internal_box_column_index|
        box_space_indicies << [internal_box_row_index, internal_box_column_index] 
      end
    end
    box_space_indicies
  end

  def box_indicies_from_space(row_index, column_index)
    box_row_index = row_index / @box_length
    box_column_index = column_index / @box_length
    [box_row_index, box_column_index]
  end  

  def solved?
    @board.each do |row|
      row.each do |space|
        unless space.all_possible_solutions.length == 1
          return false
        end
      end
    end
    true
  end

  def to_s
    puts
    row_of_spaces = "| #{@board[0].join(" | ")} |"
    puts " S U D O K U ".center(row_of_spaces.length, "-")

    @board_length.times do |row|
      row_of_spaces = "| #{@board[row].join(" | ")} |"
      puts row_of_spaces
      puts "".center(row_of_spaces.length, "-")
    end
    puts "P U L L  Y O U R  B A L L S  O U T".center(row_of_spaces.length, "-")
    ""
  end

end

class Space
  attr_reader :solved, :solution, :all_possible_solutions

  def initialize(given_value)

    if given_value == "0"
      @all_possible_solutions = (1..9).to_a.map { |possible_value| possible_value.to_s } 
      @solved = false
      @solution = nil
    else
      @all_possible_solutions = [given_value]
      @solved = true
      @solution = given_value
    end
  end

  def reduce_possible_solutions(no_longer_possible_solutions)
    @all_possible_solutions -= no_longer_possible_solutions
    if @all_possible_solutions.length == 1
      @solved = true
      @solution = @all_possible_solutions[0]
    end
  end

  def solve_it
    if @all_possible_solutions.length == 1
      @solved = true
      @solution = all_possible_solutions[0]
      true
    end
    false
  end

  def to_s
    if solved == false
      " "
    else
      @solution
    end
  end

end

# # The file has newlines at the end of each line, so we call
# # String#chomp to remove them.
# board_string = File.readlines('sample.unsolved.txt').first.chomp

# game = Sudoku.new(board_string)

# # Remember: this will just fill out what it can and not "guess"
# game.solve!

# puts game.board


game = Sudoku.new('005030081902850060600004050007402830349760005008300490150087002090000600026049503')
game.solve!




