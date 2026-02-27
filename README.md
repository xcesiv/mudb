# mudb
Music Database SQL structure
<img width="1078" height="1024" alt="image" src="https://github.com/user-attachments/assets/bbcfefa6-cc23-4028-8884-3137f0618d06" />


Jenny's Contributions to Deliverable 4
    - CreateUI.java class
    - promptPassword() in UI.java
    
    How to Test CreateUI.java
        - build
        - run 
        - URL: jdbc:mysql://localhost:3306/MUDB
        - DB username: root
        - DB password: <password for MySQL>
        - Select Option 1 to enter "CREATE MENU"
        - Select Option 1 to "Create a rating"
        - Enter MUDB username: jburkmier (Note this is different from DB username)
        - Enter Song Title: Sugar (This title may need to change as a user can only do 1 rating per song)
        - Enter Rating: 4
        - Upon success, you can do another rating for a different song or go back to the Main Menu

Ro's UpdateUI.java 
    Testing UpdateUI.java
    
    - run java -cp ".:<connector-jar>" app.Main
    - Connect to the database when prompted
        URL: jdbc:mysql://localhost:3306/MUDB
        DB Username: root
        DB Pasword: (your MySQL password)
    - Select Option 3) Update
    - Select an option for what you would like to update
        {Example: Option 2) Update Song
            Enter SongID: 1
            New Title: Test
            New Duration: 321} 
    - Once update is complete, you may continue to update other selections or return to the Main Menu
