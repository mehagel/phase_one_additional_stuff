def pig_latin_word (word)
  vowel = %w(a i o u e)

  if !vowel.include?(word[0])
    const = word.slice! (word[0])
    word << const
  end

  return word + "ay"
end

def pig_latin_sentence (sentence)
  num_words = sentence.split.length
  puts sentence.split.map! {|e| pig_latin_word(e)}.join(" ")
  puts "#{num_words} words converted."
end

pig_latin_sentence ("apple bat doggy")
#puts pig_latin_sentence ("bat")
