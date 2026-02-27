package app;

import java.sql.*;
import java.util.Scanner;

public class UpdateUI {

    private final Scanner scanner;
    private final Connection connection;

    public UpdateUI(Scanner scanner, Connection connection) {
        this.scanner = scanner;
        this.connection = connection;
    }

    public void run() {
        boolean running = true;

        while (running) {
            printMenu();
            int choice = promptInt("Choose option", 1, 6);

            switch (choice) {
                case 1 -> updateUser();
                case 2 -> updateSong();
                case 3 -> updateArtist();
                case 4 -> updateAlbum();
                case 5 -> updateRating();
                case 6 -> running = false;
            }
        }
    }

    private void printMenu() {
        System.out.println();
        System.out.println(" UPDATE MENU");
        System.out.println("1) Update User");
        System.out.println("2) Update Song");
        System.out.println("3) Update Artist");
        System.out.println("4) Update Album");
        System.out.println("5) Update Rating");
        System.out.println("6) Back to Main Menu");
        System.out.println("=================================");
    }


    // USER UPDATE
  
    private void updateUser() {
        System.out.print("Enter Username to update: ");
        String username = scanner.nextLine();

        System.out.print("New Password: ");
        String password = scanner.nextLine();

        System.out.print("New Role: ");
        String role = scanner.nextLine();

        System.out.print("New Email: ");
        String email = scanner.nextLine();

        String sql = "UPDATE MUDB_USER SET Password=?, Role=?, Email=? WHERE Username=?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, password);
            ps.setString(2, role);
            ps.setString(3, email);
            ps.setString(4, username);

            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "User updated." : "User not found.");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    
    // SONG UPDATE
    private void updateSong() {
        int songId = promptInt("Enter SongID to update", 1, Integer.MAX_VALUE);

        System.out.print("New Title: ");
        String title = scanner.nextLine();

        int duration = promptInt("New Duration (seconds)", 1, 10000);

        String sql = "UPDATE SONG SET Title=?, Duration=? WHERE SongID=?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, title);
            ps.setInt(2, duration);
            ps.setInt(3, songId);

            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Song updated." : "Song not found.");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

   
    // ARTIST UPDATE
    
    private void updateArtist() {
        int artistId = promptInt("Enter ArtistID to update", 1, Integer.MAX_VALUE);

        System.out.print("New Name: ");
        String name = scanner.nextLine();

        System.out.print("New Date of Birth (YYYY-MM-DD): ");
        String dob = scanner.nextLine();

        String sql = "UPDATE ARTIST SET Name=?, DateOfBirth=? WHERE ArtistID=?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setDate(2, Date.valueOf(dob));
            ps.setInt(3, artistId);

            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Artist updated." : "Artist not found.");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // ALBUM UPDATE
    private void updateAlbum() {
        int albumId = promptInt("Enter AlbumID to update", 1, Integer.MAX_VALUE);

        System.out.print("New Title: ");
        String title = scanner.nextLine();

        System.out.print("New Release Date (YYYY-MM-DD): ");
        String date = scanner.nextLine();

        String sql = "UPDATE ALBUM SET Title=?, ReleaseDate=? WHERE AlbumID=?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, title);
            ps.setDate(2, Date.valueOf(date));
            ps.setInt(3, albumId);

            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Album updated." : "Album not found.");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

  
    // RATING UPDATE
    private void updateRating() {
        int ratingId = promptInt("Enter RatingID to update", 1, Integer.MAX_VALUE);
        int score = promptInt("New Score (1-5)", 1, 5);

        String sql = "UPDATE RATING SET Score=? WHERE RatingID=?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, score);
            ps.setInt(2, ratingId);

            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Rating updated." : "Rating not found.");

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

  
    // HELPER METHODS
    private int promptInt(String label, int min, int max) {
        while (true) {
            System.out.print(label + ": ");
            try {
                int value = Integer.parseInt(scanner.nextLine());
                if (value < min || value > max) {
                    System.out.println("Enter value between " + min + " and " + max);
                    continue;
                }
                return value;
            } catch (NumberFormatException e) {
                System.out.println("Invalid number.");
            }
        }
    }
}
