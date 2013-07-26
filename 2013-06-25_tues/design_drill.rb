# The grid is an array of arrays contianing
# rocks and gold, something like this:
# [ ['R', 'R', 'G'],
#   ['R', 'G', 'R'],
#   ['R', 'G', 'G'] ]

def pick_up_the_gold(grid)
  gold_sachel = []
  x, y        = 0, 0

  while y < grid.length
    current_sq  = grid[y][x]
    
    if current_sq == 'G'
      gold_sachel.push 'G'
      grid[y][x] = 'R'
    end
    
    if x == (grid[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  
  raise "Oops, looks like we missed one" if grid.include? 'G'
  
  puts "You picked up #{gold_sachel.count} pieces of gold!"
end

# __________________________
# WRITE YOUR PSEUDOCODE HERE
