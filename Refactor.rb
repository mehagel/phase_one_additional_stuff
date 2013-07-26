#TODO: Refactor for elegance
def shout_backwards(string)
  string.upcase.reverse + "!!!"
end
 

def squared_primes(array)
  array.find_all do |num|
    (2..num-1).select() do |possible_factors| num % possible_factors == 0 
    end.count == 0 
  end.map do |primes| primes*primes
  end
end


 
# Driver code... don't edit. This should print a bunch of trues.
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
