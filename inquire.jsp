<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.group.dao.*" %>
<%@ page import="com.group.dao.GetProductDAO" %>
<%@ page import="com.group.pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询信息</title>
</head>
<body>
<%
	String name =request.getParameter("name");
	GetProductDAO getProductDAO = new GetProductDAO();
	ArrayList<Product> productList = new ArrayList<Product>();
	productList = getProductDAO.inquire(name);
	request.setAttribute("productList", productList);
	request.getRequestDispatcher("index.jsp").forward(request, response);
%>
</body>
</html>