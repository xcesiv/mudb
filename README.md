# MUDB - Music Database

## Project Overview
MUDB is a Java-based application that allows users to manage music data using a MySQL database. The system supports Create, Read, Update, and Delete functionality for multiple entities including Users, Songs, Artists, Albums, and Ratings.

    Features:
    Create
        - Add new Users
        - Add Songs
        - Add Artists
        - Add Albums
        - Add Ratings

    Read
        - View all Users
        - Search Songs and Artists

    Update
        - User information
        - Song Title, Duration
        - Artist Name, DOB
        - Album Title, ReleaseDate
        - Rating

    Delete
        - Remove Songs
        - Remove Ratings

    Project Structure:
        mudb/src/app/
            Main.java
            UI.java
            CreateUI.java
            ReadUI.java
            UpdateUI.java
            DeleteUI.java

Database Setup

    - Run create.sql
    - Run insert.sql
    - Verify
        USE MUDB;
        SHOW TABLES;
        SELECT COUNT(*) FROM SONG;
    - Compile javac -cp "."<connector-jar>" mudb/src/app/*.java
    - cd mudb/src
    - Run java -cp ".:../../<connector-jar>" app.Main
    - When prompted
        URL: jdbc:mysql://localhost:3306/MUDB
        Username: root
        Password: your_password

How to Test CreateUI.java

        - Select Option 1 to enter "CREATE MENU"
        - Select Option 1 to "Create a rating"
        - Enter MUDB username: jburkmier (Note this is different from DB username)
        - Enter Song Title: Sugar (This title may need to change as a user can only do 1 rating per song)
        - Enter Rating: 4
        - Upon success, you can do another rating for a different song or go back to the Main Menu

Testing UpdateUI.java

    - Select Option 3) Update
    - Select an option for what you would like to update
        {Example: Option 2) Update Song
            Enter SongID: 1
            New Title: Test
            New Duration: 321}
    - Once update is complete, you may continue to update other selections or return to the Main Menu

How to Test ReadUI.java

    -Select Option 2 to enter "SONG SELECT MENU"
    -Select an option by typing an interger representation 1-4.
        (Example: Option 2) Look Up Songs by Artist.
            Imput an artist name to filter by: Matt Maeson
            A list of all songs assosiated with matt masn should appear
            You are returned to the "Song Select Menu"

Testing DeleteUI.Java
```txt
- Select Option 4 for Delete
- Choose option 1 to delete a rating, choose option 2 to delete a song
- Enter your MUDB username
- Enter the rating you want to delete (as any user) or enter the song you want to delete (as an admin).
```

Video URL

Individual Contributions:

    Brandon Scott - UI.java, DeleteUI.java

    Matthew Edlin - ReadUI.java

    Jennifer Burkmier - CreateUI.java

    Rocio Penny - UpdateUI.java

    All Members - MUDB design, ER diagram, video presentation
