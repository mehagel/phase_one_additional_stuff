class FruitTree
  attr_reader :height, :age
  def initialize
    @age    = 1
    @height = 3
  end

  def age
    @age = @age + 1 #adds one year to age of tree
  end 

end

class Fruit
  def initialize
    @diameter = nil
  end

  def diameter
    @diameter = rand(2..4) 
  end


end

# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree < FruitTree
  attr_reader :oranges#, :height, :age

  def initialize
    @orange_basket = 0
    super
  end

  def height
    if @height <= 45
     @height *= (@age/2).to_f
    else
      @height = 45
    end
  end

  def dead?
    if @age >= 25
      true
    end
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    if dead? || @oranges == 0 || @age < 5
      false
    else 
      true
    end
  end

  def grow_oranges
    @age >= 5
      @oranges = (@age * 2)
  end
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
        @oranges -= 1
        @orange_basket += 1
        self.any_oranges?
 
  end
end

class Orange < Fruit
  # Initializes a new Orange with diameter +diameter+
  def initialize
    super
  end

  # def diameter
  #   @diameter = rand(2..4) 
  # end
end

class NoAppleError < StandardError
end

class AppleTree < FruitTree
  # Ages the tree one year
  attr_reader :apples#, :height, :age

  def initialize
    @apple_basket = 0
    super
  end

  def height
    if @height <= 40
     @height *= (@age/2).to_f
    else
      @height = 40
    end
  end

  def dead?
    if @age >= 30
      true
    end
  end

  # Returns +true+ if there are any apples on the tree, +false+ otherwise
  def any_apples?
    if dead? || @apples == 0 || @age < 7
      false
    else 
      true
    end
  end

  def grow_apples
    @age >= 7
    @apples = (@age * 3)
  end
  # Returns an apple if there are any
  # Raises a NoapplesError otherwise
  def pick_an_apple!
    raise NoapplesError, "This tree has no apples" unless self.any_apples?
        @apples -= 1
        @apple_basket += 1
        self.any_apples?
  # apple-picking logic goes here
  end
end

class Apple < Fruit
  # Initializes a new apple with diameter +diameter+
  def initialize
    @diameter = nil
    super
  end

  def diameter
    @diameter = rand(3..5) 
  end
end



# This is how you define your own custom exception classes
class NoPearError < StandardError
end

class PearTree < FruitTree
  # Ages the tree one year
  attr_reader :pears#, :height, :age

  def initialize
      super
      @pear_basket = 0
  end

  def height
    if @height <= 45
     @height *= (@age/2).to_f
    else
      @height = 45
    end
  end

  def dead?
    if @age >= 25
      true
    end
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_pears?
    if dead? || @pears == 0 || @age < 5
      false
    else 
      true
    end
  end

  def grow_pears
    @age >= 5
      @pears = (@age * 2)
  end
  # Returns an pear if there are any
  # Raises a NopearsError otherwise
  def pick_an_pear!
    raise NopearsError, "This tree has no pears" unless self.any_pears?
        @pears -= 1
        @pear_basket += 1
        self.any_pears?# pear-picking logic goes here
  end
end

class Pear< Fruit
  # Initializes a new pear with diameter +diameter+
  def initialize
    @diameter = nil
    super
  end

  def diameter
    @diameter = rand(3..7) 
  end
end

# ap_tree=AppleTree.new
# my_apple=Apple.new
# ap_tree.age
# ap_tree.age
# ap_tree.age
# ap_tree.age
# ap_tree.age
# p ap_tree.grow_apples
# p ap_tree.any_apples?
# p ap_tree.age
# p ap_tree.dead?
# p ap_tree.height
# p ap_tree.any_apples? == true


# or_tree=OrangeTree.new
# oranges=Orange.new
# p oranges.diameter
# p or_tree.age
# p or_tree.age
# p or_tree.age
# p or_tree.age
# p or_tree.age
# p or_tree.age
# p or_tree.grow_oranges
# p or_tree.any_oranges?
# p or_tree.age
# p or_tree.dead?
# p or_tree.height

# pe_tree=PearTree.new
# pears=Pear.new
# p pears.diameter
# pe_tree.age
# pe_tree.age
# pe_tree.age
# pe_tree.age
# pe_tree.age
# pe_tree.age
# pe_tree.age
# p pe_tree.grow_pears
# p pe_tree.any_pears?
# p pe_tree.age
# p pe_tree.dead?
# p pe_tree.height



class TreeGrove

  def initialize
    @grove = []
      rand(8..12).to_i.times do
      @grove << AppleTree.new
      @grove << OrangeTree.new
      @grove << PearTree.new  
    end
  
  def age!
    @grove.each do|tree| 
      tree.age
      end    
  end

  def trees
    @grove.each do |tree|
      puts tree
    end
  end

  def mature_trees

  end

  def dead_trees

  end
end

grove=TreeGrove.new
15.times {grove.age!}

p "mature"