<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >

</head>
<body>
	<div class="container" style="margin-top:20px">
		<div class="well">欢迎注册留言板</div>
		<form action="tologin" method="post">
		  <div class="well">
		    <label for="exampleInputEmail1">用户名：</label>
		    <input type="text" name="username" class="form-control" >
		  </div>
		  <div class="well">
		    <label for="exampleInputPassword1">密码：</label>
		    <input type="password" name="password" class="form-control" >
		  </div>
		 
		  <div class="well">
		  <button type="submit" class="btn btn-success">提交</button>
		  </div>
		</form>
	
	</div>



</body>
</html>