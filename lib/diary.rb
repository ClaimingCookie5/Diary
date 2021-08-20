require 'pg'

class Diary

  def self.check_environment
    if ENV['DB_TEST_ENV'] == 'test'
      connection = which_db('diary_manager_test')
    else
      connection = which_db('diary_manager')
    end
  end

  def self.which_db(database)
    PG.connect(dbname: "#{database}")
  end

  def self.all
    connection = check_environment
    results = connection.exec('SELECT * FROM diary_entries;')
    results.map { |result| result['title'] }
  end

end