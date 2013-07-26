require 'sqlite3'


$db = SQLite3::Database.new "students.db"

module StudentDB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE students (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          email VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    $db.execute(
      <<-SQL
        INSERT INTO students 
          (first_name, last_name, email, created_at, updated_at)
        VALUES
          ('Brick','Thornton', '80sguy@run',DATETIME('now'), DATETIME('now')),
          ('Carl', 'Spackler' ,'green@bush.com',DATETIME('now'), DATETIME('now'));
      SQL
    )
  end
end
