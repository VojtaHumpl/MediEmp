
public class Main {

	
	public static void main(String args[]) {
		try {
			var database = new DatabaseDriver();
			database.Connect("localhost/test", "root", "admin");
			var res = database.Query("select * from kurz");

			while(res.next())
				System.out.println(res.getString("nazev"));
		} catch (Exception e) {
			System.out.println(e);
		}


		
	}
	
	
}
