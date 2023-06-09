package cse.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

// import cse.web.User;

public class UserDao {
    public int registerUser(User user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO user" +
                "  (type, first_name, last_name, username, password, address, contact) VALUES " +
                " (?, ?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/web_app?useSSL=false", "root", "root");

                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getType().name());
            preparedStatement.setString(2, user.getFirstName());
            preparedStatement.setString(3, user.getLastName());
            preparedStatement.setString(4, user.getUsername());
            preparedStatement.setString(5, user.getPassword());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getContact());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            ExceptionPrinter.printSQLException(e);
        }
        return result;
    }
}
