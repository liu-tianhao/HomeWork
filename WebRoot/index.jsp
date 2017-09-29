<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	String name = request.getParameter("name");
	out.print(name);
//	int num = Integer.parseInt(name);
	out.print(session.getAttribute("userList"));
	if(session.getAttribute("userList") != null){
	
		if(session.getAttribute("userList") != "logging"){
		
			response.sendRedirect("login.jsp");
		} 
	}else{
			response.sendRedirect("login.jsp");
	}; 
	
	
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   

	<form action="Textcommit!Textcommit.action" method="post">
		<table>
			<tr>
				<td>学号：</td><td><input type="text" name="name" required="required" placeholder="你的学号例:501"></td>
			</tr>
			<tr>	
				<td>课题简介</td><td><input type="text" name="cont" required="required" placeholder="课题简介，按老师要求填写"></td>
			</tr>
			<tr>
				<td></td><td><input type="reset"><input type="submit" value="提交"></td>
			</tr>
			
		</table>
	</form>
  </body>
</html>
