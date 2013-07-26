def canonical(word)
 word.downcase.split(//).sort
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end


# def is_anagram?(word1, word2)
#   word1.downcase.split(//).sort == word2.downcase.split(//).sort
# end


p is_anagram?('cinema', 'iceman') # => true
p is_anagram?('iceman', 'cinema') # => true
p is_anagram?('pants', 'pants')   # => true
p is_anagram?('acres', 'cares')   # => true
p is_anagram?('cares', 'scare')   # => true
p is_anagram?('scare', 'acres')   # => true
p is_anagram?('abcde2', 'c2abed')  # => true
p is_anagram?('pants', 'turtle')  # => false
p is_anagram?('123123', 'kjhasd') # => false
