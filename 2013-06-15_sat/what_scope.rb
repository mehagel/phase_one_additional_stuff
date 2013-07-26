
# $var_1 = 22
 
# class Person
#   @@var_2
#   VAR_6 = "Ruby"
 
#   attr_reader :var_3, :var_4
 
#   def initialize(var_5 = VAR_6)
#     @var_3="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     var_7.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end

# $var1 is a global variable
#@@var-22 is a class variable and is avaiable though out the class Person
# var_3 is an instance variable
# var_4 is a local variable
# var_5 is a local variable
# VAR_6 is a constant and cannot be changed. 
# var_7 is a local variable
# var_8 is a local variable in a block
# var_9 is a local variable


# If I was to refactor this class here is one way how to do it.

$global_var = 22           

class Person
  @@class_var          
  CONSTANT = "Ruby"          
  attr_reader :instance_var  

  def initialize(arg = CONSTANT) 
    @instance_var ="Law of Demeter"  
  end

  def do_stuff(num_array=[1,2,3])   
    num_array.each do |num|     
      local_var = num + 2      
    end
  end
end
 p $global_var


 person =Person.new
 p person.do_stuff
 p person.instance_var



#  If I was to further refactor to make it return a value this here is one way to do it


# class Person
#   attr_accessor :numbers
  
#   def initialize(numbers)
#   @numbers = numbers
#   end
  
#   def do_stuff
#     @numbers.each do |index|
#      p index  +=  2
#     end
#   end
# end
# person = Person.new([1,2,3])
# person.do_stuff
