package com.group.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.group.pojo.Product;


public class addDAO {
	public int add(String name,float price,String spec,String origin,String sub_title) {
		String URL ="jdbc:mysql://localhost:3306/pupu?useUnicode=true&characterEncoding=utf8";
		String USERNAME ="root";
		String PWD ="123456";
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		int count = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PWD);
			Product product = new Product();
			String sql="insert into products value('"+name+"','"+price+"','"+spec+"','"+origin+"','"+sub_title+"')";
			stmt = connection.createStatement();
			count = stmt.executeUpdate(sql);
			if(count!=0) {
				return count;
			}else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return count;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return count;
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
