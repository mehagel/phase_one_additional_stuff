cleardef int_to_words(num)
  words= {     1000=>'Thousand ',
                  100=>'Hundred ' ,
                   90=>'ninety ',
                   80=>'eighty ',
                   70=>'seventy ',
                   60=>'sixty ',
                   50=>'fifty ', 
                   40=>'forty ',
                   30=>'thirty ',
                   20=>'twenty ', 
                   19=>'nineteen ',
                   18=>'eighteen ', 
                   17=>'seventeen ', 
                   16=>'sixteen ', 
                   15=>'fifteen ',
                   14=>'fourteen ',
                   13=>'thirteen ',
                   12=> 'twelve ',
                   11=>'eleven ',
                   10=>'ten ', 
                    9=>'nine ',
                    8=>'eight ',
                    7=>'seven ',
                    6=>'six ',
                    5=>'five ',
                    4=>'four ',
                    3=>'three ',
                    2=>'two ',
                    1=>'one '}  

  array1=[]
   until num == 0
    words.each do |number, word|
     
     if num >= number
      num -= 1
      array1 << words
      

      # if (num / word) != 0
      #   num2 = num / word
      #   words.each do {|number2, word2| number2}
          
      #     if num2 <= number2
      #       array1.unshift word2
      #   end
       end
    end
  end
  p array1
end

p int_to_words(5)
