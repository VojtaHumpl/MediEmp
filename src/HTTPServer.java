import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;
import logic.DatabaseDriver;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.sql.SQLException;

public class HTTPServer {

    /*private final int port;
    private final HttpServer server;
    private static DatabaseDriver database;

    public HTTPServer(int port, DatabaseDriver database) throws IOException {
        HTTPServer.database = database;
        this.port = port;
        server = HttpServer.create(new InetSocketAddress(port), 0);

        server.createContext("/test", new TestHandler());
        server.createContext("/getZamestnanec", new EmployeeHandler());



        server.setExecutor(null); // creates a default executor
        server.start();
    }

    public int getPort() {
        int x = port;
        return x;   // return copy
    }

    private static class TestHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange exchange) throws IOException {
            var response = "Test response";
            exchange.sendResponseHeaders(200, response.length());
            var os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }
    }*/

    /*private static class EmployeeHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange exchange) throws IOException {
            try {
                var rodnecislo = (String)exchange.getAttribute("rodneCislo");
                var res = database.Query("select * from zamestnanec where rodne_cislo=" + rodnecislo);
                res.next();
                var meta = res.getMetaData();

                String response = "";
                for (int i = 0; i < meta.getColumnCount(); i++) {
                    response += res.getString(i) + ", ";
                }

                exchange.sendResponseHeaders(200, response.length());
                var os = exchange.getResponseBody();
                os.write(response.getBytes());
                os.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }*/



}
