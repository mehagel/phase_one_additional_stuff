def anagrams_for(original_word, dictionary)
  results=[]
  dictionary.each do |dictionary_word|
     if is_anagram?(original_word, dictionary_word)
        results << dictionary_word
      end
  end
   
   p results
end

def is_anagram?(word1,word2)
  word1.downcase.split("").sort == word2.downcase.split('').sort
end

dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']
anagrams_for('acres', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
anagrams_for('sacre', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
anagrams_for('etlsm', dictionary)   # => ['smelt', 'melts', 'etlsm']
anagrams_for('unicorn', dictionary) # => []

