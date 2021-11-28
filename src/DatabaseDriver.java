import java.sql.*;

public class DatabaseDriver {

    private Connection connect = null;
    private Statement statement = null;

    public DatabaseDriver() throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    public void Connect(String url, String username, String password) throws SQLException {
        connect = DriverManager.getConnection("jdbc:mysql://" + url + "?" + "user=" + username + "&password=" + password);
        statement = connect.createStatement();
    }

    public ResultSet Query(String sql) throws SQLException {
        return statement.executeQuery(sql);
    }

}
