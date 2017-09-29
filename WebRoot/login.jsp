<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

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
   

	<form action="Login!Login.action">
		<table>
			<tr>
				<td>学号：</td><td><input type="text" name="name" checked="checked" required="required" placeholder="你的学号例:501"></td>
			</tr>
			<tr>	
				<td>密码:</td><td><input type="password" name="pass" required="required" placeholder="默认密码123456"></td>
			</tr>
			<tr>
				<td></td><td><input type="reset"><input type="submit" value="提交"></td>
			</tr>
			
		</table>
	</form>
  </body>
</html>
