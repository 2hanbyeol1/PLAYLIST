package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/PLAYLIST?serverTimezone=UTC";
			String dbId = "root";
			String dbPassword = "12345678";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbId, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}