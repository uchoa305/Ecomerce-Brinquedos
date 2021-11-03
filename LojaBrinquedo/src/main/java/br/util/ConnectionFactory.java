package br.util;

import java.sql.*; 

public class ConnectionFactory {
	
	public static Connection getConnection() throws Exception
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/dbBrinquedos","root","271198");
			
		}catch(Exception erro) 
		{
			throw new Exception(erro.getMessage());
		}
	}
	
	public static void closeConnection (Connection conn, Statement stmt, ResultSet rs) throws Exception
	{
		try
		{
				if(rs != null) 
				{
					rs.close();
				}
				if(stmt != null) 
				{
					stmt.close();
				}
				if(conn != null) 
				{
					conn.close();
				}	
		}
		catch(Exception erro)
		{
			
		}
	}
}
