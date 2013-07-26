require 'sqlite3'
require 'date'

$db = SQLite3::Database.new "address.db"

class Contact
  attr_accessor :first_name, :last_name, :company, :phone, :email
  attr_reader :id

  def initialize(args)
    @id = args["id"] || nil
    @first_name = args["first_name"]
    @last_name = args.fetch("last_name", 'Smith')
    @company = args.fetch("company", 'Twitter')
    @phone = args.fetch("phone", '555-555-5555')
    @email = args.fetch("email", 'person@email.com')
    @created_at = DateTime.now
    @updated_at = DateTime.now
  end

  def save
    $db.execute(
      <<-SQL
        INSERT OR REPLACE INTO contacts 
        (first_name, last_name, company, email, phone, created_at, updated_at)
        VALUES
      ('#{@first_name}','#{@last_name}','#{@company}','#{@email}','#{@phone}','#{@created_at}','#{@updated_at}');
      SQL
    )
    @id = $db.last_insert_row_id
  end

  def delete
    $db.execute(
      <<-SQL
        delete from contacts
        WHERE id = "#{@id}";
      SQL
    )
  end

  def edit_email(new_email)
    @email = new_email
    @updated_at = DateTime.now
    $db.execute(
      <<-SQL
        UPDATE contacts
        SET email = "#{@email}", updated_at = "#{@updated_at}"
        WHERE id = "#{@id}";
      SQL
    )
  end

  def self.retrieve(id)
    $db.results_as_hash = true
    contact = $db.execute("select * from contacts where id=#{id};") do |row|
      return Contact.new(row);
    end
    contact
  end

  def add_group
     

  end

end

class Group
  attr_accessor :name
  attr_reader :id

  def initialize(args)
    @id = args["id"] || nil
    @name = args["name"]
    @created_at = DateTime.now
    @updated_at = DateTime.now
  end

  def save 
    $db.execute(
      <<-SQL
        INSERT OR REPLACE INTO groups 
        (name, created_at, updated_at)
        VALUES
      ('#{@name}','#{@created_at}','#{@updated_at}');
      SQL
    )
    @id = $db.last_insert_row_id
  end

  def self.create(name)
    $db.execute(
      <<-SQL
        INSERT INTO groups
        (name, created_at, updated_at)
        VALUES ('#{@name}','#{@created_at}','#{@updated_at}');
      SQL
      )
  end

  def delete(id)
    
  end

end


contact1 = Contact.retrieve(1)
p contact1
contact1.edit_email("brick@dbc.org")
p contact1
contact1.delete

group=Group.new("Bed Bugs")
group.save

# contact = Contact.new(:first_name => "Alex")
# p contact.id # nil
#   contact.save # This executes an INSERT statement and makes a new record
# p contact.id # e.g., 4


# p contact.name = "Bob"
# contact.save # This executes an UPDATE statement
