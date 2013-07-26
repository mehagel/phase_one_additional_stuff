require_relative('setup.rb')
require 'date'

class Student

  def initialize(attributes = {})
    @id         = attributes[:id]
    @first_name = attributes[:first_name]
    @last_name  = attributes[:last_name]
    @email      = attributes[:email]
    @phone      = attributes[:phone]
    @created_at = attributes[:created_at]
    @updated_at = attributes[:updated_at]
  end

  def delete_student
  end

#create student objects 
  def self.all
    students = []
    $db.execute(
      <<-SQL
      SELECT * FROM students;
      SQL
      ).each do |student|
      students << student
    end
    students
  end

  
  def self.where
  end

  def save
  end
end

p Student.all
