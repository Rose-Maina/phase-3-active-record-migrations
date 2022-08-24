# add the Artist class here

#connect to a database
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/artists.sqlite"
  )
#The SQL code for creating the table
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

#create an Artist class and extend the class with ActiveRecord::Base:
class Artist < ActiveRecord::Base
end