package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/onlineshop";
			Connection con=DriverManager.getConnection(url,"root","admin");
			return con;
		}
		catch (Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
}
