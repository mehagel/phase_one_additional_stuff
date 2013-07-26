# TODO: Print the 1st, 3rd, 5th, 7th, etc. elements of a list on separate lines.
#       You should make use of Enumerable#each_with_index
def print_odd_indexed_integers(array)
  odd_index = ""
  array.each_index do |x|
    if x.odd?
      odd_index << array[x].to_s << "\n"
    end
  end
  odd_index.chop
end
 
# TODO: Return the odd numbers from a list of integers.
#       You should make use of Enumerable#select
def odd_integers(array)
  array.select {|x| x % 2 != 0}
end
 
# TODO: Return the first number from an Array that is less than a particular number - 'limit.'
#       You should make use of Enumerable#find
def first_under(array, limit)
  array.find {|x| x < limit }
end
 
# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       You should make use of Enumerable#map
def add_bang(array)
  array.map { |x| x << "!"}
end
 
# TODO: Calculate the sum of an Array of numbers.
#       You should make use of Enumerable#reduce
def sum(array)
  array.reduce(:+)
end
 
# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       You should make use of Enumerable#each_slice
def sorted_triples(array)
 sorted =[] 
 array.each_slice(3) { |e| sorted << e.sort }
 sorted
end
 
# Driver code... don't change this.
p print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) # this should print "2\n6\n10"
 
puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]
 
puts first_under([13, 21, 7, 0, 11, 106], 10) == 7
 
puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]
 
puts sum([1, 1, 2, 3, 5]) == 12
 
words = %w(the salted pork is particularly good)
puts sorted_triples(words) == [["pork", "salted", "the"],
                               ["good", "is", "particularly"]]
