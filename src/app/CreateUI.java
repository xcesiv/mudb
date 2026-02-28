package app;

import java.sql.Connection;
import java.util.Scanner;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//Inserts a Rating for a Song
public class CreateUI {
	private final Scanner scanner;
	private final Connection connection;

	public CreateUI(Scanner scanner, Connection connection) {
		this.scanner = scanner;
		this.connection = connection;
	}

	//Create Menu
	public void run() {
		while (true) {
			System.out.println("CREATE MENU");
			System.out.println("1) Create a rating");
			System.out.println("2) Exit to MUDB Main Menu");
			String choice = scanner.nextLine();

			if (choice.contains("1")) {
				insertReview();
			} else if (choice.contains("2")) {
				System.out.println("Returning to the MUDB Main Menu...");
				break; // Exit the loop to return to the main menu
			} else {
				System.out.println("Please select 1 or 2");
			}
		}
	}

	//Inserts a rating for a song
	public void insertReview() {
		System.out.println("Enter MUDB username: ");
		String user = scanner.nextLine();

		//Check if user is in the MUDB_USER table
		UI.userMatch(user);

		System.out.println("Enter the Song Title to be rated:");
		String songTitle = scanner.nextLine();
		System.out.println();

		//Query to find SongID from song title
		String getSongIdSql = "SELECT SongID FROM SONG WHERE Title = ?";
		try (PreparedStatement getSongIdStmt = connection.prepareStatement(getSongIdSql)) {
			getSongIdStmt.setString(1, songTitle);
			var resultSet = getSongIdStmt.executeQuery();

			if (resultSet.next()) {
				int songID = resultSet.getInt("SongID");

				//Check if user has already rated song
				if (songAlreadyRated(user, songID)){
					return;
				}

				System.out.println("Enter your rating on a scale of 1 to 5 with 1 being the worst and 5 being the best:");
				int rating = scanner.nextInt();
				scanner.nextLine();

				//Query to insert the rating into the RATING table
				String insertRatingSql = "INSERT INTO RATING (Score, Username, SongID) VALUES (?, ?, ?)";
				try (PreparedStatement insertRatingStmt = connection.prepareStatement(insertRatingSql)) {
					insertRatingStmt.setInt(1, rating);
					insertRatingStmt.setString(2, user);
					insertRatingStmt.setInt(3, songID);

					int rowsInserted = insertRatingStmt.executeUpdate();
					if (rowsInserted > 0) {
						System.out.println("Success!" + user + " rated the song " + songTitle + " a rating score of " + rating);
					} else {
						System.out.println("Failed to add the rating. Please try again.");
					}
				}
			} else {
				System.out.println("Song not found. Please try again.");
				run();
			}
		} catch (SQLException e) {
			System.err.println("Error inserting review: " + e.getMessage());
		}
	}

	//Checks if username has already rated song
	public boolean songAlreadyRated(String user, int songID) throws SQLException {
		String checkRatingSql = "SELECT * FROM RATING WHERE Username = ? AND SongID = ?";
		try (PreparedStatement checkRatingStmt = connection.prepareStatement(checkRatingSql)) {
			checkRatingStmt.setString(1, user);
			checkRatingStmt.setInt(2, songID);
			var ratingResultSet = checkRatingStmt.executeQuery();

			if (ratingResultSet.next()) {
				System.out.println("You have already rated this song. User can only insert one rating per song");
				return true;
			}
			return false;
		} catch (SQLException e) {
			System.err.println("Error checking rating: " + e.getMessage());
			return false;
		}
	}
}
