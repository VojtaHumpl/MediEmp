package UI;

import helpers.Helpers;
import logic.DatabaseDriver;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Scanner;

import static helpers.Helpers.*;

public class Menus {

	private static final Scanner sc = new Scanner(System.in);

	public static String admindMenu() {
		String s = "";

		s += "_______________________________________\n";
		s += "ADMIN MENU\n";
		s += "\n";
		s += "1. Logout\n";
		s += "2. Pridej zamestnavatele\n";
		s += "3. Smaz zamestnavatele\n";
		s += "4. Edituj zamestnavatele\n";
		s += "5. Vypis zamestnavatele\n";
		s += "6. Vypis zamestnance\n";
		s += "7. Vypis obory\n";
		s += "8. Vypis kurzy\n";
		s += "9. Vypis akce\n";
		s += "10. Vypis akce zamestnancu\n";
		s += "11. Vypis zvlastni zpusobilosti\n";
		s += "12. Vypis zvlastni zpusobilosti zamestnancu\n";
		s += "_______________________________________\n";

		return s;
	}

	public static String adminSwitch(int option, DatabaseDriver db) throws SQLException, NoSuchAlgorithmException {
		String res = "";
		ResultSet r = null;

		switch (option) {
			case 2: {
				System.out.println("Zadejte hodnoty IČO, EMAIL, HESLO, NÁZEV, ADRESA");
				System.out.print("IČO (8 místné číslo): ");
				String ico = sc.nextLine();
				System.out.print("EMAIL: ");
				String email = sc.nextLine();
				System.out.print("HESLO: ");
				String heslo = sc.nextLine();
				System.out.print("NÁZEV: ");
				String nazev = sc.nextLine();
				System.out.print("ADRESA: ");
				String adresa = sc.nextLine();

				MessageDigest digest = MessageDigest.getInstance("SHA3-256");
				byte[] byteHash = digest.digest(heslo.getBytes(StandardCharsets.UTF_8));
				String hash = bytesToHex(byteHash);

				PreparedStatement ps = db.getConnection().prepareStatement("insert into zamestnavatel values (?, ?, ?, ?, ?)");
				ps.setString(1, ico);
				ps.setString(2, email);
				ps.setString(3, hash);
				ps.setString(4, nazev);
				ps.setString(5, adresa);

				ps.execute();
				System.out.println("Přidáno");
				break;
			}
			case 3: {
				System.out.println("Zadejte IČO zaměstnavatele");
				System.out.print("IČO: ");
				String ico = sc.nextLine();

				PreparedStatement ps = db.getConnection().prepareStatement("delete from zamestnavatel where ico=?");
				ps.setString(1, ico);

				ps.execute();
				System.out.println("Odebráno");
				break;
			}
			case 4: {
				System.out.println("Zadejte IČO zaměstnavatele");
				System.out.print("IČO: ");
				String ico = sc.nextLine();

				PreparedStatement ps = db.getConnection().prepareStatement("select * from zamestnavatel where ico=?");
				ps.setString(1, ico);
				r = ps.executeQuery();
				r.next();

				System.out.println("IČO, EMAIL, HESLO, NÁZEV, ADRESA");
				System.out.println(Arrays.toString(parseSingleResponse(r)));
				System.out.println("");

				System.out.println("Zadejte hodnoty IČO, EMAIL, HESLO, NÁZEV, ADRESA");
				System.out.print("IČO (8 místné číslo): ");
				String ico2 = sc.nextLine();
				System.out.print("EMAIL: ");
				String email = sc.nextLine();
				System.out.print("HESLO: ");
				String heslo = sc.nextLine();
				System.out.print("NÁZEV: ");
				String nazev = sc.nextLine();
				System.out.print("ADRESA: ");
				String adresa = sc.nextLine();

				MessageDigest digest = MessageDigest.getInstance("SHA3-256");
				byte[] byteHash = digest.digest(heslo.getBytes(StandardCharsets.UTF_8));
				String hash = bytesToHex(byteHash);

				ps = db.getConnection().prepareStatement("update zamestnavatel set ico=?, email=?, heslo=?, nazev_zamestnavatele=?, adresa=? where ico=?");
				ps.setString(1, ico2);
				ps.setString(2, email);
				ps.setString(3, hash);
				ps.setString(4, nazev);
				ps.setString(5, adresa);
				ps.setString(6, ico);
				ps.execute();

				System.out.println("Změněno");

				break;
			}
			case 5:
				res += "IČO, EMAIL, HESLO, NÁZEV, ADRESA\n";
				r = db.getConnection().createStatement().executeQuery("select * from zamestnavatel");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 6:
				res += "RODNÉ_ČÍSLO, ZAMĚSTNAVATEL_IČO, OBOR_ZKRATKA, EMAIL, HESLO, JMÉNO, PŘÍJMENÍ, POHLAVÍ, DATUM_NAROZENÍ\n";
				r = db.getConnection().createStatement().executeQuery("select * from zamestnanec");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 7:
				res += "ZKRATKA, NÁZEV\n";
				r = db.getConnection().createStatement().executeQuery("select * from obor");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 8:
				res += "ID_KURZ, OBOR_ZKRATKA, NÁZEV\n";
				r = db.getConnection().createStatement().executeQuery("select * from kurz");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 9:
				res += "ID_AKCE, ID_KURZ, DATUM, ADRESA\n";
				r = db.getConnection().createStatement().executeQuery("select * from akce");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 10:
				res += "RODNÉ_ČÍSLO_ZAMĚSTNANEC, ID_AKCE\n";
				r = db.getConnection().createStatement().executeQuery("select * from zamestnanec_akce");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 11:
				res += "JMENO\n";
				r = db.getConnection().createStatement().executeQuery("select * from zvlastni_zpusobilost");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			case 12:
				res += "RODNÉ_ČÍSLO_ZAMĚSTNANAEC, JMÉNO_ZVLÁŠTNÍ_ZPŮSOBILOST\n";
				r = db.getConnection().createStatement().executeQuery("select * from zamestnanec_zvlastni_zpusobilost");
				while (r.next()) {
					res += Arrays.toString(Helpers.parseSingleResponse(r)) + "\n";
				}
				break;
			default:
				res = "";
				break;
		}

		return res;
	}

	public static String employeeMenu() {
		String s = "";

		s += "_______________________________________\n";
		s += "ZAMĚSTNANEC MENU\n";
		s += "\n";
		s += "1. Logout\n";
		s += "2. Přihlásit na akci\n";
		s += "3. Odhlásit z akce\n";
		s += "4. Vypiš vlastní údaje\n";
		s += "5. Vypiš akce\n";
		s += "_______________________________________\n";

		return s;
	}

	public static String employeeSwitch(int option, DatabaseDriver db, String email) throws SQLException {
		String res = "";
		ResultSet r = null;

		switch (option) {
			case 2: {
				System.out.println("ČÍSLO AKCE, DATUM, ADRESA, NÁZEV, ZKRATKA OBORU");
				r = db.getConnection().createStatement().executeQuery("select A.id_akce, A.datum, A.adresa, K.nazev, K.obor_zkratka from akce A inner join kurz K on K.id_kurz = A.id_kurz where Now() < A.datum");
				while (r.next()) {
					System.out.println(Arrays.toString(Helpers.parseSingleResponse(r)));
				}

				System.out.println("Zadejte číslo akce, na kterou se chcete přihlásit");
				System.out.print("Číslo akce: ");
				int id = loadOption();

				PreparedStatement ps = db.getConnection().prepareStatement("insert into zamestnanec_akce values (?, ?)");
				ps.setString(1, Helpers.parseSingleResponse(r)[0]);
				ps.setInt(2, id);
				ps.execute();

				System.out.println("Přihlášeno");
				break;
			}
			case 3: {
				System.out.println("Vaše akce:");
				System.out.println("ČÍSLO AKCE, NÁZEV, DATUM, ADRESA, ZKRATKA OBORU");
				r = db.getConnection().createStatement().executeQuery("select A.id_akce, K.nazev, A.datum, A.adresa, K.obor_zkratka from zamestnanec Z\n" +
						"inner join zamestnanec_akce ZA on ZA.rodne_cislo_zamestnanec = Z.rodne_cislo\n" +
						"inner join akce A on A.id_akce = ZA.id_akce\n" +
						"inner join kurz K on K.id_kurz = A.id_kurz");
				while (r.next()) {
					System.out.println(Arrays.toString(Helpers.parseSingleResponse(r)));
				}

				System.out.println("Zadejte číslo akce, ze které se chcete odhlásit");
				System.out.print("Číslo akce: ");
				int id = loadOption();

				PreparedStatement ps = db.getConnection().prepareStatement("delete from zamestnanec_akce where id_akce=?");
				ps.setInt(1, id);
				ps.execute();

				System.out.println("Odhlášeno");
				break;
			}
			case 4: {
				System.out.println("Vaše údaje:");
				System.out.println("RODNÉ ČÍSLO, JMÉNO, PŘÍJMENÍ, EMAIL, POHLAVÍ, DATUM NAROZENÍ, ZAMĚSTNAVATEL, OBOR");
				r = db.getConnection().createStatement().executeQuery("select distinct Z.rodne_cislo, Z.jmeno, Z.prijmeni, Z.email, Z.pohlavi, Z.datum_narozeni, ZAM.nazev_zamestnavatele, O.nazev  from zamestnanec Z\n" +
						"inner join obor O on O.zkratka = Z.obor_zkratka\n" +
						"inner join zamestnavatel ZAM on ZAM.ico = Z.zamestnavatel_ico\n" +
						"where Z.email=" + "'" + email + "'");
				while (r.next()) {
					System.out.println(Arrays.toString(Helpers.parseSingleResponse(r)));
				}

				System.out.println("Odborné způsobilosti:");
				r = db.getConnection().createStatement().executeQuery("select distinct ZV.jmeno from zamestnanec Z\n" +
						"inner join zamestnanec_zvlastni_zpusobilost ZA on ZA.rodne_cislo_zamestnanec = Z.rodne_cislo\n" +
						"inner join zvlastni_zpusobilost ZV on ZV.jmeno = ZA.jmeno_zvlastni_zpusobilost \n" +
						"where Z.email=" + "'" + email + "'");
				while (r.next()) {
					System.out.println(Arrays.toString(Helpers.parseSingleResponse(r)));
				}
			}
			case 5: {
				System.out.println("Vaše akce:");
				System.out.println("DATUM, ADRESA, NÁZEV, ZKRATKA OBORU");
				r = db.getConnection().createStatement().executeQuery("select A.datum, A.adresa, K.nazev, K.obor_zkratka from akce A \n" +
						"inner join zamestnanec_akce ZA on ZA.id_akce = A.id_akce\n" +
						"inner join kurz K on K.id_kurz = A.id_kurz\n" +
						"inner join zamestnanec Z on Z.rodne_cislo = ZA.rodne_cislo_zamestnanec\n" +
						"where Z.email=" + "'" + email + "'");
				while (r.next()) {
					System.out.println(Arrays.toString(Helpers.parseSingleResponse(r)));
				}
			}
		}

		return res;
	}

}
