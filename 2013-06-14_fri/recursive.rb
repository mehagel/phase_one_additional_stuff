NUMBERS = {
            1000000 => "million",
            1000 => "thousand",
            100=>"hundred",
             90=>"ninty",
             80=>"eighty",
             70=>"seventy",
             60=>"sixty",
             50=>"fifty",
             40=>"forty",
             30=>"thirty",
             20=>"twenty",
             19=>"ninteen",
             18=>"eighteen",
             17=>"seventeen",
             16=>"sixteen",
             15=>"fifteen",
             14=>"forteen",
             13=>"thirteen",
             12=>"twelve",
             11=>"eleven",
             10=>"ten",
             9=>"nine",
             8=>"eight",
             7=>"seven",
             6=>"six",
             5=>"five",
             4=>"four",
             3=>"three",
             2=>"two",
             1=>"one",
} 
      
                
def num_to_words(num, word_array = [])
  # return 0 if num == 0

  NUMBERS.each_pair do |key, value|
    if num >= key
      word_array << (NUMBERS[num / key] || num_to_words(num / key)) if num >= 100
      word_array << value
      num %= key
    end
  end
  word_array.flatten.join(" ")
end

p num_to_words(23325)