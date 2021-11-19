import java.sql.*;

public class Main {
	
	private static Connection connect = null;
	private static Statement statement = null;
	private static ResultSet resultset = null;
	
	public static void main(String args[]) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/test?" + "user=admin&password=admin");
			statement = connect.createStatement();
			resultset = statement.executeQuery("select * from test.kurz");
			while(resultset.next())
				System.out.println(resultset.getString("nazev"));
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	
}
