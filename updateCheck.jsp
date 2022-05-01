<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.group.dao.*" %>
<%@ page import="com.group.pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
</head>
<body>
<%
	UpdateProductDAO updateDAO = new UpdateProductDAO();

	Product product = new Product();
	request.setCharacterEncoding("UTF-8");
	
	String name= request.getParameter("name");
	float price =Float.parseFloat(request.getParameter("price"));
	String spec =request.getParameter("spec");
	String origin = request.getParameter("origin");
	String sub_title = request.getParameter("sub_title");
	int count = updateDAO.updateProduct(name, price, spec, origin,sub_title);
	if(count!=0){
		response.sendRedirect("index.jsp");
	}
	
%>
</body>
</html>