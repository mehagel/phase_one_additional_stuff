def to_roman(num)
  # Your code here
  hash={'M'=>1000, 
    'CM'=>900,
    'D'=>500, 
    'CD'=>400, 
    'C'=>100, 
    'XC'=>90, 
    'L'=>50, 
    'XL'=>40, 
    'X'=>10, 
    'IX'=>9, 
    'V'=>5, 
    'IV'=>4, 
    'I'=>1}
    output_string=''
    until hash.empty? 
     hash_pair=hash.shift
     if num/hash_pair[1]>0
       output_string += hash_pair[0]*(num/hash_pair[1])
       num=num%hash_pair[1]
     end
   end
   p output_string
 end
# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI" 
# TODO: what other cases could you add to ensure your to_roman method is working?
