# 1: Grab a solution to Roman Numerals
# 
# Source: https://gist.github.com/seaseng/9ace40e0ce0846aba67c
# Author: Navid Mostafavi

# ------------
# 2. Explain the code in plain English

#   This code takes an english number (say 150) and converts it into roman numerals "CL".


# # ------------
# # 3. Translate to pseudocode
# Input number into method
# starting at the largerst value in the Roman Numeral hash array (1000) compare input to data structure {hash} if it is equal or
# larger than the check value,return the corosponding Roman numeral then subtract the check value from the input numer . 
# Continue looping through Roman Numeral Hash array each time returning a differnt Roman Numeral and add it to the 
# ongoing roman numeral string variable which is holding all the roman numeral that the program has returned.


# ------------
# 4. Test the code


# ------------
# 5. Refactor
# def to_roman(num)
 
# roman_string = ''
 
# roman = {1000 => "M",
#          900 => "CM",
#          500 => "D",
#          400 => "CD",
#          100 => "C",
#          90  => "XC",
#          50  => "L",
#          40  => "XL",
#          10  => "X",
#          9   => "IX",
#          5   => "V",
#          4   => "IV",
#          1   => "I"
#        }
 
# roman.each do |k,v|
#   roman_string << v*(num/k)
#   num = num % k
# end
 
# roman_string
# end
 
 
# puts "My totally sweet testing script"
# puts ""
# puts "input | expected | actual"
# puts "------|----------|-------"
# puts "4     | IV       | #{to_roman(4)}"
# puts "9     | IX       | #{to_roman(9)}"
# puts "13    | XIII     | #{to_roman(13)}"
# puts "1453  | MCDLIII  | #{to_roman(1453)}"
# puts "1646  | MDCXLVI  | #{to_roman(1646)}"
 
# puts "14: #{to_roman(14)}"
# puts "44: #{to_roman(44)}"
# puts "94: #{to_roman(94)}"

def to_roman(num)
  roman_string = '' 
  
  roman = {1000 => "M",                       # I realigned all the code so 
            900 => "CM",                      #that if flows a more natural 
            500 => "D",                       #path
            400 => "CD",
            100 => "C",
            90  => "XC",
            50  => "L",
            40  => "XL",
            10  => "X",
            9   => "IX",
            5   => "V",
            4   => "IV",                        # I renamed some of the variables
            1   => "I"                          # so that there are easier to read
       }
 
    roman.each do |number,roman_numeral|          
      roman_string << roman_numeral * (num/number)
      num = num % number
      end
    roman_string
end

p to_roman(35)
p to_roman(135)
p to_roman(1035)
p to_roman(4535)

 
 
# puts "My totally sweet testing script"
# puts ""
# puts "input | expected | actual"
# puts "------|----------|-------"
# puts "4     | IV       | #{to_roman(4)}"
# puts "9     | IX       | #{to_roman(9)}"
# puts "13    | XIII     | #{to_roman(13)}"
# puts "1453  | MCDLIII  | #{to_roman(1453)}"
# puts "1646  | MDCXLVI  | #{to_roman(1646)}"
 
# puts "14: #{to_roman(14)}"
# puts "44: #{to_roman(44)}"
# puts "94: #{to_roman(94)}"




#
# Write the refactored method below. 
# Comment out the original so that your tests are run 
# against the refactored version.
  
