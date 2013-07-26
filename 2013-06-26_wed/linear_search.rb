def linear_search(num, array_of_numbers)
  index = 0
  while index < array_of_numbers.length
    if array_of_numbers[index] == num
      return index
    else 
      index += 1
    end
  end
  nil
end

random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
p linear_search(18, random_numbers)
# => 2
p linear_search(9, random_numbers)
# => nil


def global_linear_search(num, array_of_numbers)
  all_matched_indexes = []
  index = 0
  while index < array_of_numbers.length
    if array_of_numbers[index] == num
      all_matched_indexes << index
    end
    index += 1
  end
  all_matched_indexes
end
bananas_arr = "bananas".split(//)
# => ["b", "a", "n", "a", "n", "a", "s"]
p global_linear_search("a", bananas_arr)
# => [ 1, 3, 5 ]
