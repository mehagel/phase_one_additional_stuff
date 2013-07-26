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
