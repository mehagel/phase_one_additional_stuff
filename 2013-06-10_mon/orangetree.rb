# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :height, :age
  def initialize
    @height=3
    @age=1
    @oranges=0
  end
  # Ages the tree one year
  def age!
    @age+=1
    unless dead?
      @height+=1
      if @age>=5
        @oranges=@age-5
      end
    else
      @oranges=0
    end
  end

  # Is the tree dead?
  def dead?
    @age >= 25
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges >= 1
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    orange = Orange.new(rand(3..5))
    @oranges-=1
     
    return orange # orange-picking logic goes here
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter=diameter
  end
end

#-----------------------------
tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!.diameter
  end
  basket_sum=basket.inject{|sum, orange| sum+=orange}
  avg_diameter = (basket_sum/(basket.length).to_f).round(1)# It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
