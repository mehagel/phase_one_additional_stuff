def binary_search(query, test_array) 
  array_size = test_array.size 
  midpoint = (array_size / 2) 
  original_midpoint = midpoint 
  lower_bound = 0 
  upper_bound = test_array.size - 1 
  until test_array[midpoint] == query 
    return -1 if lower_bound > upper_bound 
    if test_array[midpoint] > query 
      upper_bound = midpoint - 1 
      lower_bound = lower_bound 
      midpoint = (lower_bound + upper_bound) / 2 
      p "Lower: #{lower_bound}, Upper:#{upper_bound}"
    elsif test_array[midpoint] < query 
      upper_bound = upper_bound 
      lower_bound = midpoint + 1 
      midpoint = (lower_bound + upper_bound) / 2 
      p "Lower: #{lower_bound}, Upper:#{upper_bound}"
    end
  end
end 
test_array = (100..200).to_a 
puts binary_search(333, test_array) == 99 
# => true test_array = [13, 19,  24,  29,  32,  37,  43] 
puts binary_search(35, test_array) == -1 
# # => true
