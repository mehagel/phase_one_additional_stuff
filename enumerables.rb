# Array#map  Map takes elements from an array and then return a new array 
# containing the items from the original array and , in this case, and adds the
#item from the block
# def array_map
#   grades=["A","B","C","D","F"]      # this is the orignal array  
#   grades.map {|grade| grade + "?" } # this creates a new array with the original objects
#                                     # and adds a ! to each element
# end
# p array_map


# # #Array#inject Inject takes all the elements of an array and runs them through some
# # #binary operation (ex +,-,?*) via a block and then returns the value.
# def array_inject
#   golf_scores=[75,76,78,77,79]         # this is the orignal array 
#   golf_scores.inject {|sum,n| sum + n} #this example sums all the number in the array
#                                         #golf_scores
# end
# p array_inject


# #Array#select Finds all element in a given array that are return true for a given block
# def array_select
#   golf_scores=[75,76,78,77,79,74,72]        # this is the orignal array
#   golf_scores.select {|scores| scores<78 }  #this example return all the scores from
#                                             # golf_scores array that are less than 78
# end
# p array_select


# #Array#first Takes an array and finds the first element in an array.
# def array_first
#   golf_scores=[75,76,78,77,79,74,72]        # this is the orignal array
#   golf_scores.first(3)                      #this example return the first 3 scores
#                                             # from the golf_scores array
# end
# p array_first

class Array
  def my_map             # or other enumerable method
    # your code here!
    # ...
  end

  # second enumerable method here

end

puts [1,2,3,4].my_map { |i| i -= 1 }  == [0,1,2,3]   # makes you count like a programmer!
# add your own test here
