package app;

import java.sql.Connection;
import java.util.Scanner;

public class UpdateUI {
	private final Scanner scanner;
	private final Connection connection;

	public UpdateUI(Scanner scanner, Connection connection) {
		this.scanner = scanner;
		this.connection = connection;
	}

	public void run() {
		System.out.println("CREATE MENU (TODO)");
		System.out.println("Press Enter to return...");
		scanner.nextLine();
	}
}
