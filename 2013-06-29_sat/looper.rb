# uncomment each of the following comments individually
# to see how break, next, and return affect loop control flow.

def looper
  i = 0
  while i < 20
    i += 1
    break if i == 9     #"Print out to the screen 1..8 than done with loop followed by HA"
    # next if i.even?        # "Prints out to the screen odd number between 1..19 than HA! then prints DONE!"
    # return if i == 9        # "Print out to the screen 1..8 than done with loop followed by HA" The same as line 8
    puts i
  end
  puts "done with the loop"

end

looper

# If you return within a loop, what happens?


# How would you skip an item in a loop?
# How would you stop a loop from continuing without exiting the method?

def blocker(&block)
  20.times do
    puts yield(block)
  end
end


# Uncomment each comment individually to see how break, next, and return affect
# block control flow.

def use_blocker
  blocker do
    # next
    # break
    # return
    "HA!"
    # next
    # break
    # return
  end
  puts "DONE!"
end

use_blocker


# If you return within a block, what happens?
# What does the block return when you break? next?
# Does ordering affect next, break, and return? If so, how?
