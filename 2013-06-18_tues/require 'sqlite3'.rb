require 'sqlite3'

# If you want to overwrite your database you will need 
# to delete it before running this file
$db = SQLite3::Database.new "address.db"

module AddressDB
  def self.setup
    $db.execute_batch(
      <<-SQL
        CREATE TABLE contacts (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          company VARCHAR(64) NOT NULL,
          email VARCHAR(128) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );

        CREATE TABLE  groups (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
          );

        CREATE TABLE contacts_groups (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          contact_id INTEGER NOT NULL,
          group_id INTEGER NOT NULL,
          FOREIGN KEY(contact_id) REFERENCES contacts(id),
          FOREIGN KEY(group_id) REFERENCES groups(id)
          );
      SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute_batch(
      <<-SQL
        INSERT INTO contacts 
          (first_name, last_name, company, email, phone, created_at, updated_at)
        VALUES
          ('Brick','Thornton', 'DBC', 'brick@devbootcamp.com', '555-555-5555', DATETIME('now'), DATETIME('now')),
          ('Mark','Hagel', 'DBC', 'mark@email.com', '555-555-5555', DATETIME('now'), DATETIME('now')),
          ('Jenny','Byrne', 'DBC', 'jennifer.lindsey.byrne@gmail.com', '555-867-5309', DATETIME('now'), DATETIME('now'));
        
        INSERT INTO groups 
          (name, created_at, updated_at)
        VALUES
        ("Brick's email group", DATETIME('now'), DATETIME('now')),
        ("fence lizards", DATETIME('now'), DATETIME('now')),
        ("junk email", DATETIME('now'), DATETIME('now'));

        INSERT INTO contacts_groups 
          (contact_id, group_id)
        VALUES
        (2, 1),
        (3, 3),
        (1, 2);

      SQL
    )
  end

  def self.drop_the_bass
    $db.execute_batch(
      <<-SQL
        DROP TABLE contacts;
        DROP TABLE groups;
        DROP TABLE contacts_groups;
      SQL
    )
  end
end

AddressDB.drop_the_bass
AddressDB.setup
AddressDB.seed
