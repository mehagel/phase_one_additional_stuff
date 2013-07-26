def linear_search(query, array)
  array.each_with_index do |item, i|
    if item == query
      return i
    end
  end
end

def global_linear_search(query, array)
  index_results = []
  array.each_with_index do |item, i|
    if item == query
      index_results << i 
    end
  end
  return index_results
end

random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
p linear_search(18, random_numbers)

bananas_arr = "bananas".split(//)
# => ["b", "a", "n", "a", "n", "a", "s"]
p global_linear_search("a", bananas_arr)
# => [ 1, 3, 5 ]
