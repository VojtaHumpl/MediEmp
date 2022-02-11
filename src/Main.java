import UI.Menus;
import logic.DatabaseDriver;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import static helpers.Helpers.*;

public class Main {

	private static final Scanner sc = new Scanner(System.in);
	private static boolean running = true;
	static DatabaseDriver database = null;

	private static int login = 0;  //0-nikdo, 1-admin, 2-zamestnavatel, 3-zamestnanec
	private static String loggedEmail = "";

	public static void main(String[] args) throws IOException {
		try {
			database = new DatabaseDriver();
			database.Connect("localhost/test", "root", "admin");
		} catch (Exception e) {
			System.out.println(e);
		}


		while(running){
			printMenu();    // handle menu podle login

			if (login == 0) {
				switch (loadOption()) {
					case 0:
						running = false;
						break;
					case 1:
						login();
						break;
					case 2:

						break;
				}
			} else if (login == 1) {
				int option = loadOption();
				switch (option) {
					case 1:
						login = 0;
						loggedEmail = "";
						break;
					default:
						try {
							System.out.println(Menus.adminSwitch(option, database));
						} catch (Exception e) {
							e.printStackTrace();
						}
						break;
				}
			} else if (login == 2) {
				int option = loadOption();
				switch (option) {
					case 1:
						login = 0;
						loggedEmail = "";
						break;
					default:
						try {
							System.out.println(Menus.employerSwitch(option, database, loggedEmail));
						} catch (Exception e) {
							e.printStackTrace();
						}
						break;
				}
			} else if (login == 3) {
				int option = loadOption();
				switch (option) {
					case 1:
						login = 0;
						loggedEmail = "";
						break;
					default:
						try {
							System.out.println(Menus.employeeSwitch(option, database, loggedEmail));
						} catch (Exception e) {
							e.printStackTrace();
						}
						break;
				}
			}
		}

	}

	private static void printMenu() {
		if (login == 0) {
			System.out.println("_______________________________________");
			System.out.println("MediEmp+");
			System.out.println("");
			System.out.println("1. Login");
			System.out.println("2. Settings");
			System.out.println("0. Exit");
			System.out.println("_______________________________________");
		} else if (login == 1) {
			System.out.println(Menus.admindMenu());
		} else if (login == 2) {
			System.out.println(Menus.employerMenu());
		} else if (login == 3) {
			System.out.println(Menus.employeeMenu());
		}
	}


	private static void login() {
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA3-256");

			System.out.println("Zadejte email: ");
			String email = sc.nextLine();
			System.out.println("Zadejte heslo: ");
			String password = sc.nextLine();
			byte[] byteHash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
			String hash = bytesToHex(byteHash);     // hash to check in db

			ResultSet res = null;

			PreparedStatement ps = database.getConnection().prepareStatement("select heslo from zamestnavatel where email=?");
			ps.setString(1, email);
			//res = database.Query("select heslo from zamestnavatel where email=" + "'" + email + "'");
			res = ps.executeQuery();
			if(res.next()) {
				String response = parseSingleResponse(res)[0];
				if (response != null && response.equals(hash)) {
					if (email.equals("admin"))
						login = 1;
					else
						login = 2;
					loggedEmail = email;
					return;
				}
			}

			ps = database.getConnection().prepareStatement("select heslo from zamestnanec where email=?");
			ps.setString(1, email);
			//res = database.Query("select heslo from zamestnanec where email=" + "'" + email + "'");
			res = ps.executeQuery();
			if(res.next()) {
				String response = parseSingleResponse(res)[0];
				if (response != null && response.equals(hash)) {
					login = 3;
					loggedEmail = email;
					return;
				}
			}

			System.out.println("Uzivatel nenalezen");
			login = 0;
			loggedEmail = "";
			return;

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}



	// return string array




}
