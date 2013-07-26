
def bottle_song(n)
if n==1
  p "#{n} Bottle of beer on the wall"
  p "#{n} Bottle of beer"
  p "Take one down pass it around"
  p "Zero bottles of beer...Hurray!"
  return
end

  p "#{n} Bottles of beer on the wall"
  p "#{n} Bottles of beer"
  p     " Take one down pass it around"
  p "#{n-1} Bottles of beer on the wall"

  bottle_song(n-1)

end
bottle_song(99)
