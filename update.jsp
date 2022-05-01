<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<link rel="stylesheet" type="text/css" href="css/editPage.css">

</head>
<body>
<form action="updateCheck.jsp" method="post">
	<ul>
    	<li>
    		<span>商品名称:</span>
        	<input type="text" readonly="readonly" name='name'  id="name" value="<%=request.getParameter("name") %>"  />
    	</li>
    	<li>
    		<span>商品价格:</span>
        	<input type="text"	id="PRICE" name='price' value="<%=request.getParameter("price") %>"  />
    	</li>
		<li>
    		<span>商品规格:</span>
        	<input type="text"	id="SPEC" name='spec' value="<%=request.getParameter("spec") %>" />
    	</li>
        <li>
    		<span>商品产地:</span>
        	<input type="text"	id="ORIGIN" name='origin' value="<%=request.getParameter("origin") %>"/>
    	</li>
    		<li>
    		<span>商品标题:</span>
        	<input type="text"	id="SUN_TITLE" name='sub_title' value="<%=request.getParameter("sub_title") %>"  />
    	</li>
    	<li>
    		<input type="submit" id="edit_1" value="确认修改"></input>
    		
    	</li>
    </ul> 
</form>
<a href="index.jsp">
	<input type="submit" id="edit_2" value="取消修改"></input>
</a>
</body>
</html>