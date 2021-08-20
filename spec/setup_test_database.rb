require 'pg'

def setup_test_database
  
  p "Setting up test database..."

  connection = PG.connect(dbname: 'diary_manager_test')

  # Clear the diary_entries table
  connection.exec("TRUNCATE diary_entries;")
end

def add_entries
  connection = PG.connect(dbname: 'diary_manager_test')
  connection.exec("INSERT INTO diary_entries (title) VALUES ('Diary entry 1');")
  connection.exec("INSERT INTO diary_entries (title) VALUES ('Diary entry 2');")
  connection.exec("INSERT INTO diary_entries (title) VALUES ('Diary entry 3');")
  connection.exec("INSERT INTO diary_entries (title) VALUES ('Diary entry 4');")
end