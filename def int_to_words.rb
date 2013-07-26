def int_to_words(num)
  ones = { 1 => 'one', 
           2 => 'two', 
           3 => 'three', 
           4 => 'four', 
           5 => 'five', 
           6 => 'six',
           7 => 'seven', 
           8 => 'eight', 
           9 => 'nine'}
 
  teens = { 10=>'ten',
            11=>'eleven',
            12=> 'twelve', 
            13=>'thirteen', 
            14=>'fourteen',
            15=>'fifteen', 
            16=>'sixteen', 
            17=>'seventeen', 
            18=>'eighteen', 
            19=>'nineteen'}
                
   tens = { 2=>'twenty', 
            3=>'thirty',
            4=>'forty', 
            5=>'fifty', 
            6=>'sixty', 
            7=>'seventy', 
            8=>'eighty', 
            9=>'ninety'}
 
  if num == 0
    "Zero"
  else
    answer = ""
    while num != 0
      if num < 10
        answer += ones[num] 
      elsif num >= 10 && num < 20
        answer += teens[num]
      elsif num >= 20 && num < 100
        first_digit  = tens[num.to_s[0].to_i]
        second_digit = ones[num.to_s[1].to_i]  
        answer += second_digit ? (first_digit + second_digit) : first_digit 
      elsif num >= 100 && num <999
        first_digit = ones[num.to_s[0].to_i]
        answer += first_digit + " hundred"
        # num -= num * 100 #left off check this value
      end
      return answer
    end
  end
end
 
1.upto(99) do |n|
  p int_to_words(n)
end



