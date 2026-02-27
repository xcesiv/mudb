package app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class ReadUI {
	private final Scanner scanner;
	private final Connection connection;

	public ReadUI(Scanner scanner, Connection connection) {
		this.scanner = scanner;
		this.connection = connection;
	}

	public void run() {
		boolean exit = false;
		int subChoice;
		int rating;
		String albumTitle;
		String albumName;
		while (!exit) {
			System.out.println("SONG TITLE LOOK UP MENU:");
			System.out.println("1. Look Up songs by Album?");
			System.out.println("2. Look Up songs by Artist?");
			System.out.println("3. Look Up songs by Rating?");
			System.out.println("4. Exit");
			subChoice = scanner.nextInt();
				switch (subChoice) {
					case 1:
						System.out.println("Input an Album title to filter by:");
						albumName = scanner.next();

						break;
						case 2:
							System.out.println("Input an Artist Name to filter by:");
							albumTitle = scanner.next();
							//Select SONG.title
							//FROM SONG, features, artist
							//where SONG.SongID = features.SongID AND artist.ArtistID = features.ArtistID AND artist.name = ?
							break;
							case 3:
								System.out.println("Input Rating to filter by:");
								rating = scanner.nextInt();
								// SELECT S.title
								//FRON SONG as S, RATING as R
								//WHERE S.SongID = R.SongID AND R.Socre = ?
								break;
								case 4:
									System.out.println("EXITING SELECT MENU...");
									exit = true;
									break;
								default:
								System.out.println("Invalid choice. Please try again.");
								break;
						}
					}

			}
			public void albumFilter(Connection conn, String albumName) {
			PreparedStatement ps = null;
			ResultSet rs = null;
			try{
				ps	= conn.prepareStatement(
						"Select SONG.title\n"+
								"FROM SONG, ALBUM, contains\n"+
								"WHERE SONG.SongID = contains.SongID AND Album.AlbumID = contains.AlbumID AND Album.title = ?\n");
				ps.setString(1, albumName);

			}
			catch(SQLException e){
				System.out.println("error");
			}
			}
			public void artistFilter(Connection conn, String artistName) {

			}
			public void ratingFilter(Connection conn, String rating) {

			}
		}

