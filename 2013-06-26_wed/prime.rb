def prime_factors(n)
  prime_factors_array = []
  until n == 1
    2.upto(n) do |i|
      if n % i == 0 && is_prime?(i)
        prime_factors_array << i
        n /= i
      end
    end
  end
  prime_factors_array.sort
end
 
 
def is_prime?(n)
  2.upto(n - 1) do |i|
    if n % i == 0
      return false
    end
  end
  true
end
 
p prime_factors(8)
p prime_factors(25)
p prime_factors(123123123)
