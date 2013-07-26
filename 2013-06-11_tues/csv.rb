require 'csv'
require 'date'
 
DateTime.now.to_s


class Person

  attr_reader :first_name, :last_name, :email, :phone, :created_at
  # Look at the above CSV file
  # What attributes should a Person object have?
  def initialize(first_name,last_name,email,phone,created_at)
    @first_name = first_name
    @last_name = last_name
    @email  = email 
    @phone = phone
    p created_at
    @created_at = DateTime.parse(created_at)
  end

end
 
class PersonParser
  attr_reader :file
  
  def initialize(file)
    @file = file
    @people = nil
    @headers = []
  end
  
  def people
    # If we've already parsed the CSV file, don't parse it again.
    # Remember: @people is +nil+ by default.
    return @people if @people

    @people = []
    CSV.foreach(@file) do |row|
      if @headers.empty?
        @headers = row
        next
      end
      row.shift
      @people << Person.new(*row)
    end
    @people
    # We've never called people before, now parse the CSV file
    # and return an Array of Person objects here.  Save the
    # Array in the @people instance variable.
  end

  def add_person(person)
    @people << person
  end

  def save
    CSV.open(@file, "wb") do |csv|
      csv << @headers
      @people.each_with_index do |person,i|
        csv << [i+1, person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end
end
 
parser = PersonParser.new('people.csv')
p parser.people
 
puts "There are #{parser.people.size} people in the file '#{parser.file}'."
parser.add_person(Person.new("Mcballsballs","Bobby","mauris.Morbi.non@nequeNullam.com","1-906-235-0832",'2013-07-06T07:23:09-07:00'))

parser.save

