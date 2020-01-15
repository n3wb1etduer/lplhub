package org.lanqiao.util3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "hr", "root");			
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
	public static void main(String[] args) {
		
		System.out.println(JDBCUtil.getConnection());
	}
}
