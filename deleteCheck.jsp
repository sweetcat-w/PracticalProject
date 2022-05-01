<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.group.dao.*"%>
<%@page import="com.group.pojo.*"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除信息</title>
</head>
<body>
<%
	deleteDAO deleteDAO = new deleteDAO();
	Product product = new Product();
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String price1 = request.getParameter("price");
	Float price=Float.valueOf(price1);
	String spec = request.getParameter("spec");
	String origin =request.getParameter("origin");
 	String sub_title =request.getParameter("sub_title");
 	int count = deleteDAO.delete(name, price, spec, origin,sub_title);  
	if(count!=0){
		response.sendRedirect("index.jsp");
	}else if(count==0){
		
	}else{
		
	}
	
%>
</body>
</html>