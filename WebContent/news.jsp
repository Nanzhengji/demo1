<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="com.dz.entity.User" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >

</head>
<body>
	<div class="container" style="margin-top:20px">
	
		<form action="addnews" method="post">
		  <div class="well">
		    <label for="exampleInputEmail1">留言人：</label>
		    <input type="text" name="username" class="form-control" >
		  
		    <label for="exampleInputPassword1">标题：</label>
		    <input type="text" name="title" class="form-control" >
		  
		  <label for="exampleInputPassword2">内容：</label>
		  <textarea name="content" class="form-control" rows="5"></textarea>
		  
		  <button type="submit" class="btn btn-success">提交</button>
		  </div>
		</form>
	
	</div>



</body>
</html>