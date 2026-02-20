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
		System.out.println("DELETE MENU (TODO)");
		System.out.println("Press Enter to return...");
		scanner.nextLine();
	}
}
