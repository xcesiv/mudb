package app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class DeleteUI {
	private final Scanner scanner;
	private final Connection connection;

	public DeleteUI(Scanner scanner, Connection connection) {
		this.scanner = scanner;
		this.connection = connection;
	}

	public void run() {
		while (true) {
			System.out.println();
			System.out.println("DELETE MENU");
			System.out.println("1) Delete a rating");
			System.out.println("2) Delete a song (Admin only)");
			System.out.println("3) Exit to MUDB Main Menu");

			int choice = UI.promptInt(scanner, "Choose an option");
			if (choice == 1) {
				deleteRating();
			} else if (choice == 2) {
				deleteSongAdminOnly();
			} else if (choice == 3) {
				return;
			} else {
				System.out.println("Please select 1, 2, or 3.");
			}
		}
	}

	private void deleteRating() {
		System.out.println();
		String user = UI.promptRequiredString(scanner, "Enter MUDB username");

		UI.userMatch(user);

		String songTitle = UI.promptRequiredString(scanner, "Enter Song Title of the rating to delete");
		Integer songId = findSongIdByTitle(songTitle);
		if (songId == null) {
			System.out.println("Song not found. Please try again.");
			return;
		}

		if (!ratingExists(user, songId)) {
			System.out.println("No rating found for user '" + user + "' on song '" + songTitle + "'.");
			return;
		}

		if (!UI.confirm(scanner, "Are you sure you want to delete this rating?")) {
			System.out.println("Delete cancelled.");
			return;
		}

		String deleteSql = "DELETE FROM RATING WHERE Username = ? AND SongID = ?";
		try (PreparedStatement stmt = connection.prepareStatement(deleteSql)) {
			stmt.setString(1, user);
			stmt.setInt(2, songId);

			int rows = stmt.executeUpdate();
			System.out.println(rows > 0 ? "Deleted rating." : "Nothing deleted.");
		} catch (SQLException e) {
			System.err.println("Error deleting rating: " + e.getMessage());
		}
	}

	private void deleteSongAdminOnly() {
		System.out.println();

		String adminUser = UI.promptRequiredString(scanner, "Enter admin username");
		UI.userMatch(adminUser);

		if (!UI.isAdmin(connection, adminUser)) {
			System.out.println("Access denied: user '" + adminUser + "' is not an admin.");
			return;
		}

		String songTitle = UI.promptRequiredString(scanner, "Enter Song Title to delete");
		Integer songId = findSongIdByTitle(songTitle);
		if (songId == null) {
			System.out.println("Song not found. Please try again.");
			return;
		}

		System.out.println("Song found: " + getSongDisplayByTitle(songTitle));

		if (!UI.confirm(scanner, "Delete this song AND all related records?")) {
			System.out.println("Delete cancelled.");
			return;
		}

		boolean originalAutoCommit = true;
		try {
			originalAutoCommit = connection.getAutoCommit();
			connection.setAutoCommit(false);

			deleteBySongId("DELETE FROM RATING WHERE SongID = ?", songId);
			deleteBySongId("DELETE FROM FEATURES WHERE SongID = ?", songId);
			deleteBySongId("DELETE FROM CONTAINS WHERE SongID = ?", songId);
			deleteBySongId("DELETE FROM SONG_GENRE WHERE SongID = ?", songId);
			deleteBySongId("DELETE FROM SONG_LANGUAGE WHERE SongID = ?", songId);

			int songRows = deleteBySongId("DELETE FROM SONG WHERE SongID = ?", songId);

			if (songRows == 0) {
				connection.rollback();
				System.out.println("Song delete failed. Rolled back.");
				return;
			}

			connection.commit();
			System.out.println("Deleted song " + songTitle);
		} catch (SQLException e) {
			try { connection.rollback(); } catch (SQLException ignored) {}
			System.err.println("Error deleting song: " + e.getMessage());
		} finally {
			try { connection.setAutoCommit(originalAutoCommit); } catch (SQLException ignored) {}
		}
	}

	private Integer findSongIdByTitle(String songTitle) {
		String sql = "SELECT SongID FROM SONG WHERE Title = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, songTitle);
			var rs = stmt.executeQuery();
			if (!rs.next()) return null;
			return rs.getInt("SongID");
		} catch (SQLException e) {
			System.err.println("Error finding song: " + e.getMessage());
			return null;
		}
	}

	private String getSongDisplayByTitle(String songTitle) {
		String sql = """
		SELECT s.Title, ar.Name AS ArtistName
		FROM SONG s
		JOIN CONTAINS c ON s.SongID = c.SongID
		JOIN ALBUM al ON c.AlbumID = al.AlbumID
		JOIN ARTIST ar ON al.ArtistID = ar.ArtistID
		WHERE s.Title = ?
		LIMIT 1
	""";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, songTitle);
			var rs = stmt.executeQuery();
			if (!rs.next()) return null;

			return rs.getString("Title") + " - " + rs.getString("ArtistName");
		} catch (SQLException e) {
			System.err.println("Error finding song: " + e.getMessage());
			return null;
		}
	}

	private boolean ratingExists(String user, int songId) {
		String sql = "SELECT 1 FROM RATING WHERE Username = ? AND SongID = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, user);
			stmt.setInt(2, songId);
			var rs = stmt.executeQuery();
			return rs.next();
		} catch (SQLException e) {
			System.err.println("Error checking rating: " + e.getMessage());
			return false;
		}
	}

	private int deleteBySongId(String sql, int songId) throws SQLException {
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, songId);
			return stmt.executeUpdate();
		}
	}
}
