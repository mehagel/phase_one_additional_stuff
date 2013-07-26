def dictionary_sort
  dict_array=[]
  puts "Type a word"
  word=gets.chomp
  
  until word == ''
    if word 
      p dict_array << word
    end
    
    puts "Type a word or hit enter to finish"
    word=gets.chomp
  end
  
  puts "Congratulations! Your dictionary has #{dict_array.count}"
  puts dict_array.sort
end

dictionary_sort
