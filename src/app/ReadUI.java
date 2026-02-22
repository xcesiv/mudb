package app;

import java.sql.Connection;
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
		boolean submenuExit = false;
		int subChoice;
		int choice;
		while (!exit) {
			System.out.println("SELECT MENU (What do you want to see?):");
			System.out.println("1. Look up Songs");
			System.out.println("2. Look up Albums.");
			System.out.println("3. Look up Artist.");
			System.out.println("4. Exit");
			choice = scanner.nextInt();
			switch (choice) {
				case 1:
					while (!submenuExit) {
						System.out.println("SONG LOOK UP MENU:");
						System.out.println("1. Look Up songs by Album?");
						System.out.println("2. Look Up songs by Artist?");
						System.out.println("3. Look Up songs by Rating?");
						System.out.println("4. Look Up songs by Duration?");
						System.out.println("5. Exit");
						subChoice = scanner.nextInt();
						switch (subChoice) {
							case 1:
								System.out.println("Input Album title:");
								String albumName = scanner.next();
								//Select SONG.title
								//FROM SONG, ALBUM, contains
								//where SONG.SongID = contains.SongID AND Album.AlbumID = contains.AlbumID AND Album.title = ?
								break;
								case 2:
									System.out.println("Input Artist Name:");
									String albumTitle = scanner.next();
									//Select SONG.title
									//FROM SONG, features, artist
									//where SONG.SongID = features.SongID AND artist.ArtistID = features.ArtistID AND artist.name = ?
									break;
									case 3:
										System.out.println("Input Rating:");
										String rating = scanner.nextINT();

						}
					}
					break;
					case 2:
						while (!submenuExit) {
							System.out.println("Look Up Albums");
							System.out.println("1. Look Up Albums by Title");
							System.out.println("2. Look Up Albums by Artist");
							System.out.println("3. Look Up Albums by Rating");
							System.out.println("4. Exit");
						}
						break;
						case 3:
							while (!submenuExit) {
								System.out.println("Look Up Artist");
								System.out.println("1. Look Up Artists by Album?");
								System.out.println("2. Look Up Artists by Song?");
								System.out.println("3. Look Up Artists by Age?");
							}
							break;
							case 4:
								exit = true;
								break;
								default:break;
			}
		}
	}
}
