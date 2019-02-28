package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	public static Connection cnn;
	public static void getConnect() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Da xac dinh HQTCSDL");
			cnn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QLXeKhach;user=sa;password=Abcde12345");
			System.out.println("Da ket noi thanh cong");
			System.out.println("--------------------------");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
