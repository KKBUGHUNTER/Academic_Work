To connect PostgreSQL to a Golang application on Ubuntu, you'll need to follow these steps:

1. **Install PostgreSQL**: If you haven't already installed PostgreSQL, you can do so using the following command:

   ```
   sudo apt-get update
   sudo apt-get install git
   sudo apt-get install golang-go
   sudo apt-get install postgresql postgresql-contrib
   ```

2. **Start PostgreSQL**: Start the PostgreSQL service:

   ```
   sudo service postgresql start
   ```

3. **Create a PostgreSQL User and Database**:
   You'll need to create a PostgreSQL user and a database for your Go application. You can do this using the `psql` command-line utility:

   ```
   sudo -u postgres psql
   ```

   Then, within the `psql` shell, create a new user and a database:

   ```sql
   CREATE USER myuser WITH PASSWORD 'mypassword';
   CREATE DATABASE mydb;
   GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
   ```

   Replace `myuser` and `mypassword` with your desired username and password, and `mydb` with your desired database name.

5. ** Switch to the PostgreSQL User**

You can switch to the PostgreSQL user and then use `psql`. The PostgreSQL user is typically named "postgres." Run the following command:

```bash
sudo -u postgres psql -d mydb
```

This command switches to the "postgres" system user and then runs `psql` to connect to the specified database. You will be prompted for the password of the "postgres" PostgreSQL user.


6. You can execute the SQL code to create the "list" table:

   ```sql
   CREATE TABLE example_table (
       id INT PRIMARY KEY,
       name VARCHAR (255)
   );
   INSERT INTO list VALUES (1, 'Sam');
   INSERT INTO list VALUES (2, 'Som');
   INSERT INTO list VALUES (3, 'Ram');
   INSERT INTO list VALUES (4, 'Bam');
   ```

This SQL code defines a table named "list" with two columns, "id" and "name." The "id" column is set as the primary key, and the "name" column is of type VARCHAR with a maximum length of 255 characters.

7. Exit the `psql` session by typing:

   ```sql
   \q
   ```
   
This will return you to your regular command prompt.






8. **Create a Go Module**:

   If you are starting a new project, you can create a Go module by navigating to your project directory and running:

   ```bash
   go mod init myproject
   ```

   If you're working on an existing project, and it doesn't have a Go module yet, you can also initialize one in the project's root directory.

   
9. **Install the PostgreSQL Driver for Go**:
   You'll need a Go driver to connect to PostgreSQL. One popular option is `pq`. You can install it using `go get`:

   ```
   go get github.com/lib/pq
   ```

10. **Write a Go Program (main.go)**:
   Here's a simple example of a Go program that connects to the PostgreSQL database and performs a basic query:

   ```go
   package main

   import (
       "database/sql"
       "fmt"
       _ "github.com/lib/pq"
   )

   func main() {
       // Connect to the PostgreSQL database
       connStr := "user=myuser dbname=mydb password=mypassword sslmode=disable"
       db, err := sql.Open("postgres", connStr)
       if err != nil {
           panic(err)
       }
       defer db.Close()

       // Perform a sample query
       rows, err := db.Query("SELECT * FROM list")
       if err != nil {
           panic(err)
       }
       defer rows.Close()

       // Iterate through the results
       for rows.Next() {
           var id int
           var name string
           if err := rows.Scan(&id, &name); err != nil {
               panic(err)
           }
           fmt.Printf("ID: %d, Name: %s\n", id, name)
       }
   }
   ```

   Replace `myuser`, `mydb`, and the query with your own credentials and SQL statement.

11. **Run the Go Program**:
   You can compile and run your Go program like this:

   ```
   go build -o main.go
   ./main
   ```

12. **Fixing The permission denied for table list problem**
![Screenshot from 2023-09-19 18-47-27](https://github.com/KKBUGHUNTER/Others/assets/91019132/753e3674-17ed-429d-b9d6-81de0fdbf1e9)
 Here are the steps to grant the necessary permissions:

12.1. **Connect to PostgreSQL**: Connect to the PostgreSQL database with a superuser or a user who has the necessary privileges to grant permissions. You can use the `psql` command as you did before:

   ```bash
   sudo -u postgres psql -d mydb
   ```

   Replace "mydb" with the name of your database.

12.2. **Grant SELECT Permission**: In the `psql` shell, grant the `SELECT` permission on the "list" table to your PostgreSQL user. Replace `<username>` with the actual username your Go application is using:

   ```sql
   GRANT SELECT ON TABLE list TO myuser;
   ```

   This grants the SELECT permission on the "list" table to the specified user, allowing them to retrieve data from the table.

12.3. **Exit `psql`**: After granting the permissions, you can exit the `psql` shell:

   ```sql
   \q
   ```

12.4. **Rebuild and Run Your Go Application**: After granting the necessary permissions, rebuild and run your Go application:

   ```bash
   go build -o main && ./main
   ```

   Your application should now be able to access the "list" table without encountering the "permission denied" error.

## Thank you...
