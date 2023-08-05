package com.js.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.js.dto.Customer;

public class CustomerCRUD {
	public static final String URL = "jdbc:mysql://localhost:3306/product_store";
	public static final String USER = "root";
	public static final String PWD = "VS33";
	public static final String PATH = "com.mysql.cj.jdbc.Driver";
	
	public static int insertCustomer(Customer c) {
		String Query = "insert into customer values(?,?,?,?,?)";
		Connection con = null;
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL,USER,PWD);
			PreparedStatement ps = con.prepareStatement(Query); 
			ps.setInt(1, c.getId());
			ps.setString(2, c.getName());
			ps.setString(3, c.getEmail());
			ps.setInt(4, c.getPassword());
			ps.setLong(5, c.getPhone());
			return ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	
	}
	public static boolean validateCustomer(String email, int password){
		String Query = "select * from customer where email=? and password=?";
		Connection con = null;
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL,USER,PWD);
			PreparedStatement ps = con.prepareStatement(Query); 
			ps.setString(1, email);
			ps.setInt(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return false;
	
	}	
	
	
}
