https://gist.github.com/mcarthurgill/d1e18a2c55fe363824de



# def to_roman(num)
#   # Your code here
#   hash={'M'=>1000, 'CM'=>900,'D'=>500, 'CD'=>400, 'C'=>100, 'XC'=>90, 'L'=>50, 'XL'=>40, 'X'=>10, 'IX'=>9, 'V'=>5, 'IV'=>4, 'I'=>1}
#   output_string=''
#   until hash.empty? 
#       hash_pair=hash.shift
#     if num/hash_pair[1]>0
#       output_string += hash_pair[0]*(num/hash_pair[1])
#       num=num%hash_pair[1]
#     end
#   end
#   p output_string
# end
# # Drive code... this should print out trues.
 
# puts to_roman(1) == "I"
# puts to_roman(3) == "III"
# puts to_roman(6) == "VI" 

def to_roman(num)
                          #Realigned the hash so that it is easily readable.        
  roman_num={  'M' =>1000,  #Changed the name of the hash so that if matched        
            'CM'=>900,        #What the method is doing.
             'D' =>500, 
             'CD'=>400, 
             'C' =>100, 
             'XC'=>90, 
             'L' =>50, 
             'XL'=>40, 
             'X' =>10, 
             'IX'=>9, 
             'V' =>5, 
             'IV'=>4, 
             'I' =>1}
                          #Changed the name of some of the variable so the 
  roman_num_output=''     #More closly match the method
    until roman_num.empty? 
      roman_num_pair=roman_num.shift
    if num/roman_num_pair[1]>0
      roman_num_output += roman_num_pair[0]*(num/roman_num_pair[1])
      num=num%roman_num_pair[1]
    end
  end
  p roman_num_output
end
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI" 
