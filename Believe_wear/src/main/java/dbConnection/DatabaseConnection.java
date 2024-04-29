package dbConnection;

import java.sql.*;

public class DatabaseConnection {

	private static Connection con;

	public static Connection giveConnection() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/believe_wear";
			String user = "root";
			String pass = "";

			con = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}
