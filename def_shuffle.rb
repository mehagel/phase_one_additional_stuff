def shuffle(array)
  shuffled = []
  rand_value = array.sample
  i=0
  
  while i < array.length
    
    if !shuffled.include?(rand_value)
      shuffled << rand_value
      i += 1
    else
      rand_value = array.sample
    end
  end

  return shuffled
end


# Driver code:
sorted_array = (1..10).to_a

# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)
