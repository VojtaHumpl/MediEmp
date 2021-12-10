import java.io.IOException;

public class Main {

    private static HTTPServer handler;

    public static void main(String[] args) throws IOException {
        try {
            var database = new DatabaseDriver();
            database.Connect("localhost/test", "root", "admin");

            handler = new HTTPServer(8000, database);
        } catch (Exception e) {
            System.out.println(e);
        }


    }

	
}
