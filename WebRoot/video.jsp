<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'video.jsp' starting page</title>
   
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
  	<div>
    	<form action="VideosName!VideosName.action" method="post">
    	<input type="text" name="filesname">
    	<input type="submit">
    	</form>
    </div>
    
    
    	<table>
    
	    	<s:iterator value="videofile" id='videoname'> 
	    		
	    		
	    		<a charset="utf-8" href="movies.jsp?name=<s:property value='videoname'/>"><s:property value='videoname'/></a>
				<br/>
			
			</s:iterator> 
    	</table>
    <div>
    	
    
    </div>
    
  </body>
</html>
