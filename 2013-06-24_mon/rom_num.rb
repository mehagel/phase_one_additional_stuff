def to_roman(int)
    rom_num= {1000 =>  'M', 
              900   =>  'CM',
              500   =>  'D', 
              400   =>  'CD',
              100   =>  'C', 
              90    =>  'XC', 
              50    =>  'L', 
              40    =>  'XL', 
              10    =>  'X',
              9     =>  'IX', 
              5     =>  'V', 
              4     =>  'IV',
              1     =>  'I' }

  final_answer =''

    until int == 0
      rom_num.each do |number,v|
      if int >= number
        final_answer << v 
      int = int - number
    end
  end
  end
  final_answer

end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

puts to_roman(4) == "IV"
puts to_roman(9) == "IX"
puts to_roman(13) == "XIII"
puts to_roman(1453) == "MCDLIII"
puts to_roman(1646) == "MDCXLVI"
