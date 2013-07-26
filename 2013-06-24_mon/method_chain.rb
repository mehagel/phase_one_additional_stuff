# def squared_primes(array)
#   array.find_all{|x| }.count == 0 }.map{|p| p*p}
# end
 
# # Driver code... don't edit. This should print a bunch of trues.
# puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
# puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]

def find_prime(array)
    prime_num=[]
     array.each do |x| 
      if square?(x) 
        prime_num << x
      end
    end
    prime_num.map{|p| p*p}
end


def square?(num)
  (2..num-1).each do|i| 
    if num % i == 0 
      return false
    end
  end
true
end
puts find_prime([1, 3, 4, 7, 42]) == [1, 9, 49]
