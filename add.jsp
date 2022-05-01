<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加信息</title>
<link rel="stylesheet" type="text/css" href="css/addPage.css">
</head>
<body>
<img src="images/back.jpg" />
<form action="addCheck.jsp" method="post">
	<ul>
    	<li>
    		<span>商品名称：</span>
        	<input type="text"  id="name"  name='name' value="" />
    	</li>
    	<li>
    		<span>商品价格：</span> 
        	<input type="text"	id="price" name='price' value="" />
    	</li>
		<li>
    		<span>商品规格：</span>
        	<input type="text"	id="spec" name='spec' value="" />
    	</li>
        <li>
    		<span>商品产地：</span>
        	<input type="text"	id="origin" name='origin' value=""/>
    	</li>
    	<li>
    		<span>商品标题：</span>
        	<input type="text"	id="sub_title" name='sub_title' value=""/>
    	</li>
    	<li>
    		<input type="submit" id="add"  value="确认添加"></input>
    	</li>
    </ul> 
   </form> 
   <a href="index.jsp">
	<input type="submit" id="add_2" value="取消添加"></input>
   </a>
</body>
</html>