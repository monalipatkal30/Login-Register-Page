package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String username ="hr";
	private static final String password ="hr";
	
	// whenever Util class will get load driver will get load
	static {
		try {
			//Load Oracle JDBC driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Oracle jdbc driver not found");
		}
	}
	
	// for building connection and will get load in the method getConnection in UserdaoImp
	public static Connection getConnection() throws SQLException{
		System.out.println("Connection Established!!");
		return DriverManager.getConnection(url, username, password);
	}
	
}
