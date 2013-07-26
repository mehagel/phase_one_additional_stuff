require 'prime'

def prime_factor(num)
  prime_array=[]
  prime_factors=[]

  Prime.each(num) do |prime|
    prime_array << prime
  end
  
  prime_array.each do |x|
   prime_factors << x if  num % x == 0    
  end
  
  prime_factors.sort!
  if prime_factors.reduce(:*) == num
    return prime_factors
  end

  until prime_factors.reduce(:*) == num
    if num == prime_factors.last
      return prime_factors
    else 
      prime_factors << prime_factors.first
    end
  end
  return prime_factors
end

p prime_factor(6)
""
