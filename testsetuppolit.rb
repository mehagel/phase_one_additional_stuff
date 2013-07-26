require 'pp'
require 'csv'
require 'sqlite3'
require './politician.rb'

#if you want to overwrite your database you will need to delete it before running this file
$db = SQLite3::Database.new "congress.db"

def initialize_db
    # return if File.exists? "students.db"
    # if you don't want to overwrite your database, uncomment the above.
    $db.execute(<<-SQL
        CREATE TABLE politicians (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name VARCHAR(64) NOT NULL,
          party VARCHAR(64) NOT NULL,
          location VARCHAR(64) NOT NULL,
          grade_level_1996 DECIMAL NOT NULL,
          grade_level_112th DECIMAL NOT NULL,
          years_in_congress INTEGER NOT NULL,
          dw1_score DECIMAL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
          );
      SQL
      )
end

# a method to add a few records to your database when you start
def seed_db
    
  @politicians = []

  CSV.foreach('politicians.csv', headers: true, :header_converters => :symbol) do |row|
    @politicians << Politician.new(row.to_hash)
  end

  # john = @politicians[1]
  # p john.name

  @politicians.each do |politician|
    $db.execute("INSERT INTO politicians 
    VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, DATETIME('now'), DATETIME('now'));",
    [ politician.name, 
      politician.party, 
      politician.location_1, 
      politician.grade_level_since_1996, 
      politician.grade_level_112th_congress, 
      politician.years_in_congress, 
      politician.dw1_score])

  end
end

initialize_db
seed_db


# parser = PersonParser.new('congress.csv')

