package logic;

import java.sql.*;

public class DatabaseDriver {

    private Connection connection = null;
    private Statement statement = null;

    public DatabaseDriver() throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    public void Connect(String url, String username, String password) throws SQLException {
        connection = DriverManager.getConnection("jdbc:mysql://" + url + "?" + "user=" + username + "&password=" + password);
        statement = connection.createStatement();
    }

    /*public ResultSet Query(String sql) throws SQLException {
        return statement.executeQuery(sql);
    }*/

    public Connection getConnection() {
        return connection;
    }

}
