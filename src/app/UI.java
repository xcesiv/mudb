package app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import java.io.Console;

public class UI {
	private static final Scanner scanner = new Scanner(System.in);
	private static Connection connection;

	public void run() {
		connectOrExit();
		menu();
		closeConnection();
	}

	private void connectOrExit() {
		while (true) {
			System.out.println();
			System.out.println("MUDB Database Connection Setup");

			String url = promptRequiredString(scanner, "URL (ex: jdbc:mysql://localhost:3306/MUDB)");
			String user = promptRequiredString(scanner, "DB Username");
			String pass = promptPassword("DB Password");

			try {
				connection = DriverManager.getConnection(url, user, pass);
				System.out.println("Connected successfully.");
				return;
			} catch (SQLException ex) {
				System.out.println("Connection failed: " + ex.getMessage());
				boolean retry = confirm(scanner, "Try again?");
				if (!retry) {
					System.out.println("Exiting.");
					System.exit(0);
				}
			}
		}
	}

	//Makes password appear as blank when typed in command line
	private String promptPassword(String prompt) {
		Console console = System.console();
		if (console != null) {
			char[] passwordArray = console.readPassword(prompt + ": ");
			return new String(passwordArray);
		} else {
			System.out.print(prompt + ": ");
			return scanner.nextLine();
		}
	}

	private void menu() {
		boolean running = true;
		while (running) {
			printMainMenu();
			int choice = promptIntInRange("Choose an option", 1, 5);

			switch (choice) {
				case 1 -> new CreateUI(scanner, connection).run();
				case 2 -> new ReadUI(scanner, connection).run();
				case 3 -> new UpdateUI(scanner, connection).run();
				case 4 -> new DeleteUI(scanner, connection).run();
				case 5 -> running = false;
			}
		}
	}

	private void printMainMenu() {
		System.out.println();
		System.out.println("====================================");
		System.out.println("MUDB - Your Music Database");
		System.out.println("====================================");
		System.out.println("1) Create");
		System.out.println("2) Read");
		System.out.println("3) Update");
		System.out.println("4) Delete");
		System.out.println("5) Exit");
		System.out.println();
	}

	// select a number in the range
	public static int promptIntInRange(String label, int min, int max) {
		while (true) {
			System.out.print(label + " (" + min + "-" + max + "): ");
			String raw = scanner.nextLine().trim();
			try {
				int value = Integer.parseInt(raw);
				if (value < min || value > max) {
					System.out.println("Please enter a number between " + min + " and " + max + ".");
					continue;
				}
				return value;
			} catch (NumberFormatException ex) {
				System.out.println("Please enter a valid number.");
			}
		}
	}

	// select a number any integer
	public static int promptInt(Scanner scanner, String label) {
		while (true) {
			System.out.print(label + ": ");
			String raw = scanner.nextLine().trim();
			try {
				return Integer.parseInt(raw);
			} catch (NumberFormatException ex) {
				System.out.println("Please enter a valid number.");
			}
		}
	}

	// Required string prompt
	public static String promptRequiredString(Scanner scanner, String label) {
		while (true) {
			System.out.print(label + ": ");
			String value = scanner.nextLine().trim();
			if (!value.isEmpty()) return value;
			System.out.println("This field is required.");
		}
	}

	// Optional string prompt
	public static String promptOptionalString(String label) {
		System.out.print(label + " (optional): ");
		return scanner.nextLine();
	}

	// confirm yes or no message
	public static boolean confirm(Scanner scanner, String message) {
		while (true) {
			System.out.print(message + " (y/n): ");
			String raw = scanner.nextLine().trim().toLowerCase();
			if (raw.equals("y")) return true;
			if (raw.equals("n")) return false;
			System.out.println("Please type 'y' or 'n'.");
		}
	}


	// close the connection
	private void closeConnection() {
		if (connection == null) return;
		try {
			connection.close();
		} catch (SQLException ignored) {
		}
	}

	//Checks if username is in the MUDB_USER table
	public static void userMatch(String user){
		//Query to get username from MUDB_USER table
		String checkUserSql = "SELECT Username FROM MUDB_USER WHERE Username = ?";
		try (PreparedStatement checkUserStmt = connection.prepareStatement(checkUserSql)) {
			checkUserStmt.setString(1, user);
			var userResultSet = checkUserStmt.executeQuery();

			if (!userResultSet.next()) {
				throw new IllegalArgumentException("Username does not exist in the MUDB_USER table.");
			}
		} catch (SQLException e) {
			System.err.println("Error checking username: " + e.getMessage());
		}
	}

	//check admin role
	public static boolean isAdmin(Connection connection, String user) {
		String sql = "SELECT Role FROM MUDB_USER WHERE Username = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, user);
			var rs = stmt.executeQuery();
			if (!rs.next()) return false;

			String role = rs.getString("Role");
			if (role == null) return false;

			String r = role.trim().toLowerCase();
			return r.equals("admin") || r.equals("administrator");
		} catch (SQLException e) {
			System.err.println("Error checking admin role: " + e.getMessage());
			return false;
		}
	}
}
