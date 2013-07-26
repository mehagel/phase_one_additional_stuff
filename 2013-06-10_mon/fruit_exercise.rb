class Fruit

end

class Orange

end

class Apple

end

class FruitTree

  attr_accessor :age, :number_of_fruit, :height, :type_of_fruit

  def initialize(fruit_type)
    @type_of_fruit = fruit_type
    @number_of_fruit = 0
    @age = 0
  end

  def grow
    height+=1
  end

  def ages
    @age+=1
  end

  def dead_tree?
    age >= 10 ? true : false
  end


  def bears_fruit?
    age >= 5 && !dead_tree? ? true : false
  end

end

class AppleTree < FruitTree
  def initialize()
    super("Apple")
  end

end

class PearTree < FruitTree
  def initialize
    super("Pear")
  end

end

class OrangeTree < FruitTree
  def initialize
    super("orange")
  end
end

class TreeGrove
  attr_reader :grove

  def initialize
    @grove = [AppleTree.new, OrangeTree.new, PearTree.new]
  end

  def age
    @grove.each do |tree|
      tree.ages
    end
  end

  def trees
    return @grove
  end
    

  def mature_trees
    @grove.each do |tree|
       # p tree.bears_fruit?
      if tree.bears_fruit?
        p  tree.type_of_fruit
      end
    end
  end

  def dead_tree
    @grove.each do |tree|
      if tree.dead_tree?
        p tree.type_of_fruit
      end
    end
  end
end

grove = TreeGrove.new
grove.age
grove.age
grove.age
grove.age
grove.age
grove.age
grove.age
p "Trees that are mature"
grove.mature_trees
grove.age
grove.age
grove.age
grove.age
grove.age
p "Trees that are dead"
grove.dead_tree
grove.age
grove.age
grove.age
grove.age
p "Trees that shouldn't be alive"
grove.mature_trees
