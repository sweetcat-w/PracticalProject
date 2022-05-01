package com.group.dao;

import java.sql.*;
import java.util.ArrayList;

import com.group.pojo.Product;

public class UpdateProductDAO {
	public int updateProduct(String name,float price, String spec,String origin, String sub_title) {
		String URL ="jdbc:mysql://localhost:3306/t?useUnicode=true&characterEncoding=utf8";
		String USERNAME ="root";
		String PWD ="root";
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		int count = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PWD);
			stmt = connection.createStatement();
			
			Product product = new Product();
			String sql = "update products set price='" + price+"',spec='"+spec+"',origin='"+origin+"',sub_title='"+sub_title+"' where name='"+name+"'";
			count = stmt.executeUpdate(sql);
			if(count!=0) {
				return count;
			}else {
				return 0;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return count;
		}finally {
			
				try {
					if(rs!=null)
						rs.close();
					if(stmt!=null) stmt.close();
					if(connection!=null) connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		
		
		
		

}
}
