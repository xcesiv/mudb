# mudb
Music Database SQL structure
<img width="1078" height="1024" alt="image" src="https://github.com/user-attachments/assets/bbcfefa6-cc23-4028-8884-3137f0618d06" />


MUDB - Music Database

Project Overview
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
        - Remove Users
        - Remove Songs
        - Remove Artists
        - Remove Albums
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


Video URL

Individual Contributions:

    Brandon Scott - UI.java, Delete.java

    Matthew Edlin - ReadUI.java

    Jennifer Burkmier - createUI.java

    Rocio Penny - UpdateUI.java

    All Members - MUDB design, ER diagram, video presentation
