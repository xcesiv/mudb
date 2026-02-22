package app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class UI {
	private final Scanner scanner = new Scanner(System.in);
	private Connection connection;

	public void run() {
		connectOrExit();
		menu();
		closeConnection();
	}

	private void connectOrExit() {
		while (true) {
			System.out.println();
			System.out.println("MUDB Database Connection Setup");

			String url = promptRequiredString("URL (ex: jdbc:mysql://localhost:3306/MUDB)");
			String user = promptRequiredString("DB Username");
			String pass = promptOptionalString("DB Password");

			try {
				connection = DriverManager.getConnection(url, user, pass);
				System.out.println("Connected successfully.");
				return;
			} catch (SQLException ex) {
				System.out.println("Connection failed: " + ex.getMessage());
				boolean retry = confirm("Try again?");
				if (!retry) {
					System.out.println("Exiting.");
					System.exit(0);
				}
			}
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
	private int promptIntInRange(String label, int min, int max) {
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

	// Required string prompt
	private String promptRequiredString(String label) {
		while (true) {
			System.out.print(label + ": ");
			String value = scanner.nextLine().trim();
			if (!value.isEmpty()) return value;
			System.out.println("This field is required.");
		}
	}

	// Optional string prompt
	private String promptOptionalString(String label) {
		System.out.print(label + " (optional): ");
		return scanner.nextLine();
	}

	// confirm yes or no message
	private boolean confirm(String message) {
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
}
