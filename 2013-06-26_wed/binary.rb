def binary_search(target, array)
  min = 0
  max = array.length - 1

  while min <= max do
    index = (min + max) / 2
    if array[index] == target
      return index
    elsif array[index] > target
      max = index - 1
    elsif array[index] < target
      min = index + 1
    end
  end
  -1
end

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35
# => true

test_array = [13, 19,  24,  29,  32,  37,  43]
puts binary_search(35, test_array) == -1
# => true

test_array = [1, 2, 3, 4]
puts binary_search(2, test_array) == 1
# => true

test_array = [1, 2, 3, 4]
puts binary_search(3, test_array) == 2
# => true

test_array = [1, 2, 3, 4]
puts binary_search(4, test_array) == 3
# => true

test_array = [1, 2, 3, 4]
puts binary_search(0, test_array) == -1
# => true
