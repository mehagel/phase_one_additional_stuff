def in_words(int)

  if int == 0
    word_num = "zero "
  elsif int == 1
    word_num << "one "
  elsif int == 2
    word_num << "two "
  elsif int == 3
    word_num << "three "
  elsif int == 4
    word_num << "four "
  elsif int == 5
    word_num << "five "
  elsif int == 6
    word_num << "six "
  elsif int == 7
    word_num << "seven "
  elsif int == 8
    word_num << "eight "
  elsif int == 9
    word_num << "nine "
  else int == 10
    word_num << "ten "
end
p word_num

end
in_words(7)
