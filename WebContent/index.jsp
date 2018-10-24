<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dz.entity.Message" %>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>

<title>留言板</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
	<div class="container" style="margin-top:35px">
		 <div class="well" >
			<a class="btn btn-success" href="news.jsp">发表新留言</a>
		</div>
		
		<%
			List<Message> list=(List<Message>)request.getAttribute("msglist");
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				if(!list.isEmpty()){
				for(Message msg : list){
		%>
			
		<div class = "well">
			<h5>标题：&nbsp;<%=msg.getTitle() %> &nbsp; &nbsp;<small>发表者：&nbsp;<%=msg.getUsername() %> &nbsp; &nbsp; 发表时间：&nbsp; <%=sdf.format(msg.getCreatetime() )%></small></h5>
			<p><%=msg.getContent() %></p>
			<div class = "alert alert-info" style = "width:100px">
				<a ref = "<%=msg.getId() %>" href = "javascript:;" class = "del">删除</a> 
				<a href = "toupdate?id=<%=msg.getId()%>">编辑</a>
			</div>		
		</div>			
		<%
			}
		}
		%>		
	</div>
	
	<script src = "https://cdn.staticfile.org/jquery/1.11.2/jquery.js"></script>
	<script>
		$(function(){			
			$(".del").click(function(){				
				if(confirm("您确定要删除吗？")){
					var id = $(this).attr("ref");
					window.location.href = "del?id=" + id;
				}				
			});			
		});
		
	</script>
</body>
</html>