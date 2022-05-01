<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.group.dao.*"%>
<%@page import="com.group.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>朴朴商场信息</title>
<link rel="stylesheet" type="text/css" href="css/operatePage.css">
</head>
<body>
<%
	ArrayList<Product> productList = new ArrayList<Product>();
	productList = (ArrayList)request.getAttribute("productList");
%>
<div class="top">
	<nav>
		<h1>朴朴商场信息</h1>
	</nav>
</div>
<div class="edit">
			<table border="1px" width="100%">
              	<tr>
              		<form action="inquire.jsp" method="post">
                		<th>查询信息</th>
                   	 	<th colspan="3" ><input type="text" name="name" /></th>
                   		<th>
                    		<input type="submit" value="查询"/>
                        	<a href="add.jsp">添加</a>
                    	</th>
                    </form>
                </tr>
                <tr>
                	<th>商品名称</th>
                    <th>商品价格</th>
                    <th>商品规格</th>
                    <th>商品产地</th>
                    <th>商品标题</th>
                </tr>
               	<%if(productList != null){
                	for(int i = 0; i < productList.size(); i++){ 
                		Product product = new Product();
                		product = productList.get(i);
                %>
                <tr>
                	<td><%=product.getName() %></td>
                    <td><%=product.getPrice() %></td>
                    <td><%=product.getSpec() %></td>
                    <td><%=product.getOrigin() %></td>
                    <td><%=product.getSub_title() %></td>
                    <td>
                    	<a href="edit.jsp?name=<%=product.getName()%>&&price=<%=product.getPrice()%>
                    	&&spec=<%=product.getSpec()%>&&origin=<%=product.getOrigin()%>&&sub_title=<%=product.getSub_title()%>">修改</a>
                    	
                        <a href="delete.jsp?name=<%=product.getName()%>&&price=<%=product.getPrice()%>
                    	&&spec=<%=product.getSpec()%>&&origin=<%=product.getOrigin()%>&&sub_title=<%=product.getSub_title()%>">删除</a>
                    </td>
                </tr>
                  	<%}
                }%>
            </table>
</div>
</body>
</html>