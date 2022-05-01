package com.group.dao;

import java.sql.*;
import java.util.ArrayList;
import com.group.pojo.Product;

public class GetProductDAO {

	/**
	 * @param name
	 * @return
	 */
	public ArrayList<Product> inquire(String name) {
		String URL ="jdbc:mysql://localhost:3306/pupu?useUnicode=true&characterEncoding=utf8";
		String USERNAME ="root";
		String PWD ="123456";
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Product> productList = new ArrayList<Product>();
		try{
			String sql = "";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PWD);
			stmt = connection.createStatement();
		
			if(name.equals("")) {
				sql ="select * from products";
			} else {
				sql = "select * from products where name like '%"+ name + "%'";
			}
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getFloat("price"));
				product.setSpec(rs.getString("spec"));
				product.setOrigin(rs.getString("origin"));
				product.setSub_title(rs.getString("sub_title"));
				productList.add(product);
			}
			return productList;
					
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			return null;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		finally{
			try{
				if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(connection!=null) connection.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}		
	}

}
