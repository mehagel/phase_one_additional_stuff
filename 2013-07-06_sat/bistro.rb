require 'csv'

class Recipe
  attr_reader :id, :name, :description, :ingredients, :directions
  
    def initialize(args)
      @id           = args[:id]
      @name         = args[:name]
      @description  = args[:description]
      @ingredients  = args[:ingredients]
      @directions   = args[:directions]
    end

    def to_s
      "#{@id} #{@name}"
      "#{@ingredients}"
      "#{@description}"
      "#{@directions}"
    end

    def recipe_page
     puts "#{@id} - #{@name}\n#{@description}\n Ingredients:\n #{@ingredients}\n\ Preperation:\n #{@directions}"
    end
end

#############################################################################

class Bistro 

  attr_reader :recipes


  def initialize(filename)
    @filename = filename
    @recipes =  @recipes || []
  end

  def load_recipes
    CSV.foreach(@filename, :headers => true, :header_converters => :symbol) do |row|
      @recipes << Recipe.new(row)
    end
    # @recipes
  end

  def display_recipes
     @recipes.each {|recipe| puts "#{recipe.id.to_s}. #{recipe.name.to_s}"}
  end

  def sort_recipes
    arr = @recipes.sort_by{|recipe| recipe.name}
    arr.each_with_index do|a, index| 
    puts "#{index+1}  #{a.name}"
    end
  end

  def find_recipe_by_id(recipe_id)
    @recipes.each {|recipe|recipe.to_s if recipe.id == recipe_id.to_s}
  end

end

# if ARGV.any?

#   # I wonder if I could clean this up...
#   bistro = Bistro.new
#   bistro.load_recepes("recipes.csv")

#   if ARGV[0] == "list"
#     puts "TODO: implement listing of recipes"
#   elsif ARGV[0] == "display"
#     puts find_recipe_by_id(ARGV[1])
#   end
# end

bistro = Bistro.new('recipes.csv')
bistro.load_recipes
bistro.display_recipes
puts
bistro.sort_recipes
puts
bistro.find_recipe_by_id(1)
