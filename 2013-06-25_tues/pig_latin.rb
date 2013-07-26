# GET a word from user input
def pig_latin_conversion_single(word)
  # puts "Input a word to convert to pig latin:"
  # word = gets.chomp
  # IF the word starts with a vowel, don't change it
  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(word[0]) 
    return word
  # ELSE replace the word with its pig latin equivalent
  else
  #   GET all of the consonants before the first vowel in the word
    consonants = ""
    word.each_char do |letter|
      if vowels.include?(letter) == false
        consonants << letter
        word.slice!(0)
      else
        return word + consonants + 'ay'
      end
    end
  end
end

def pig_sentence
  puts "Input a sentence to convert to pig latin:"
  sentence = gets.chomp
  new_sentence = ''
  sentence.split.each do |word|
    new_sentence << pig_latin_conversion_single(word).to_s.chomp + ' '
  end
  puts new_sentence
  puts sentence.split.length.to_s 
end

pig_sentence



#   SET the consonants at the end of the word and add the suffix "ay"
# ENDIF
# PRINT the pig-latin-ified word
