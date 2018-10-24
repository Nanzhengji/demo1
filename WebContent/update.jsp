<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="com.dz.entity.Message" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
	<div class="container" style="margin-top:20px">
	<%Message msg=(Message)request.getAttribute("msglist"); %>
	
		<form action="change" method="post">
		<input type = "hidden" name = "id" value = "<%=msg.getId()%>">
			<div class="well">更改留言</div>
			
			
		  <div class="well">
		    <label for="exampleInputEmail1">留言人：</label>
		    <input type="text" name="username" value="<%=msg.getUsername() %>" class="form-control" >
		  </div>
		  <div class="well">
		    <label for="exampleInputPassword1">标题：</label>
		    <input type="text" name="title" value="<%=msg.getTitle() %>" class="form-control" >
		  </div>
		  <div class="well">
		  <label for="exampleInputPassword2">内容：</label>
		  <textarea name="content" value="<%=msg.getContent()%>" class="form-control" rows="5"></textarea>
		  </div>
		  <div class="well">
		  <button type="submit" class="btn btn-success">提交</button>
		  </div>
		</form>
	
	</div>
	
</body>
</html>