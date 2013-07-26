# def mean(numbers)
#   sum = numbers.inject(:+)
#   return  sum / numbers.length
# end
# sample_avg = mean([5, 3, 6, 10])

# def mean(*numbers)
#   sum = numbers.inject(:+)
  
#   return sum / numbers.length
# end

# # This will throw an error. Change this line so that it works.
# sample_avg = mean(5, 3, 6, 10)

def print_and_sort(array)
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element
  end
  puts output_string
  p array.sort
end
print_and_sort(["me", "be", "get", "bet"])

