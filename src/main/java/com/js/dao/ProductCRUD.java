package com.js.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.js.dto.Product;

public class ProductCRUD {
	public static final String URL = "jdbc:mysql://localhost:3306/product_store";
	public static final String USER = "root";
	public static final String PWD = "VS33";
	public static final String PATH = "com.mysql.cj.jdbc.Driver";
	

	public static int insertProduct(Product p) {
		Connection c = null;
		String Query = "insert into product values(?,?,?,?,?)";
	    try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = c.prepareStatement(Query); 
			ps.setInt(1, p.getId());
			ps.setString(2, p.getName());
			ps.setString(3, p.getBrand());
			ps.setDouble(4, p.getPrice());
			ps.setInt(5, p.getQuantity());
			return ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    finally {
	    	try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    }
		return 0;
	}
	
	public int deleteProductId(int id) {
		String Query = "delete from product where id=?";
		Connection c = null;
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement pa = c.prepareStatement(Query);
			pa.setInt(1,id);
			return pa.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public int UpdateProduct(int id, Product p) {
		String Query = "update product set name=?, brand=?, price=?, quantity=? where id=?";
		Connection c = null;
		try {
			Class.forName(PATH);
			c =DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = c.prepareStatement(Query);
			ps.setString(1, p.getName());
			ps.setString(2, p.getBrand());
			ps.setDouble(3, p.getPrice());
			ps.setInt(4, p.getQuantity());
			ps.setInt(5, id);
			return ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public double deleteProductPrice(double price) {
		String Query = "delete from product where price=?";
		Connection c = null;
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement pa = c.prepareStatement(Query);
			pa.setDouble(1,price);
			return pa.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public Product GetProductById(int id) {
		String Query = "select * from product where id=?";
		Connection c = null;
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = c.prepareStatement(Query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setBrand(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setQuantity(rs.getInt(5));
				return p;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
	} 
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
		}
	
	public ArrayList<Product> GetAllProducts() {
		ArrayList<Product> al = new ArrayList<Product>();
		String Query = "select * from product ";
		Connection c = null;
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = c.prepareStatement(Query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setBrand(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setQuantity(rs.getInt(5));
				al.add(p); //adding every product into ArrayList
			}
			return al;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
	} 
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
		
	}
	
	public int[] batchExecutionToInsert (ArrayList<Product> products) {
		Connection c = null;
		String Query = "insert into product values(?,?,?,?,?)";
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps =c.prepareStatement(Query);
			for(Product p : products) {
				ps.setInt(1,p.getId());
				ps.setString(2,p.getName());
				ps.setString(3,p.getBrand());
				ps.setDouble(4,p.getPrice());
				ps.setInt(5,p.getQuantity());
				ps.addBatch();
				return ps.executeBatch();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public int[] batchExecutionToDelete(int[] arr) {
		Connection c = null;
		String query = "DELETE FROM product WHERE id = ?";
		try {
			Class.forName(PATH);
			c = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = c.prepareStatement(query);
			for (int x : arr) {
				ps.setInt(1, x);
				ps.addBatch();
			}
			return ps.executeBatch();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public int deleteProductBrand(String brand) {
	    String query = "DELETE FROM product WHERE brand=?";
	    Connection connection = null;
	    try {
	        Class.forName(PATH);
	        connection = DriverManager.getConnection(URL, USER, PWD);
	        PreparedStatement preparedStatement = connection.prepareStatement(query);
	        preparedStatement.setString(1, brand);
	        return preparedStatement.executeUpdate();
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (connection != null) {
	                connection.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return 0;
	}


	

	
	
}