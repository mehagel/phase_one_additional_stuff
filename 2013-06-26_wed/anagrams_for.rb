def canonical(word)
 word.downcase.split(//).sort
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(word, dictionary)
  anagrams_of_word = []

  dictionary.each do |dict_word|
    if is_anagram?(word, dict_word)
      anagrams_of_word << dict_word
    end
  end

  anagrams_of_word
end

# The dictionary is just an arbitrary collection of strings.
# It need not contain English words, e.g., 'etlsm'.
dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# If the input word happens to be in the dictionary, it should be in the the returned array, too.
# The list should also be case-insensitive.
p anagrams_for('acres', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('ACRES', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
p anagrams_for('Cesar', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
p anagrams_for('sacre', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# Neither the input word nor the words in the dictionary need to be valid English words
p anagrams_for('etlsm', dictionary)   # => ['smelt', 'melts', 'etlsm']

anagrams_for('unicorn', dictionary) # => []
