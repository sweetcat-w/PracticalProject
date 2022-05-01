<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除信息</title>
<link rel="stylesheet" type="text/css" href="css/delPage.css">
</head>
<body>
<img src="images/back.jpg" />
<form action="deleteCheck.jsp" method="post">
	<ul>
    	<li>
    		<span>商品名称:</span>
        	<input type="text" readonly="readonly" name='name'  id="name" value="<%=request.getParameter("name") %>" />
    	</li>
    	<li>
    		<span>商品价格:</span>
        	<input type="text"	readonly="readonly" id="price" name='price' value="<%=request.getParameter("price") %>" />
    	</li>
		<li>
    		<span>商品规格:</span>
        	<input type="text"	readonly="readonly" id="spec" name='spec' value="<%=request.getParameter("spec") %>" />
    	</li>
        <li>
    		<span>商品产地:</span>
        	<input type="text"	readonly="readonly" id="origin" name='origin' value="<%=request.getParameter("origin") %>" />
    	</li>
    
    	<li>
    		<input type="submit" id="delete" value="确认删除"></input>
    	</li>
    </ul> 
</form>
<a href="index.jsp">
	<input type="submit" id="delete_2" value="取消删除"></input>
</a>
</body>
</html>