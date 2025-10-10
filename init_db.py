import sqlite3

# Establishes a connection to the database file
connection = sqlite3.connect('database.db')

# Reads the schema.sql file and executes its content
with open('schema.sql') as f:
    connection.executescript(f.read())

# Create a cursor object to execute SQL commands
cur = connection.cursor()

# Insert some sample data
cur.execute(           )


# Commit the changes and close the connection
connection.commit()
connection.close()

print("Database initialized successfully.")
