<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'video.jsp' starting page</title>
   
		<meta charset="utf-8"></meta>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div>
    	<form action="VideosName!VideosName.action" method="post">
    	<input type="text" name="filesname" required="required" placeholder="文件所在位置">
    	<input type="submit">
    	</form>
    </div>
    
    
    	<table>
    
	    	<s:iterator value="videofile" id='videoname'> 
	    		
	    		<form method="post" action="CheckVideoName!CheckVideoName.action?videonames=<s:property value='videoname'/>" >
	    			
	    			<input type="submit">
	    		</form>
	    		
	    		<a charset="utf-8" href="CheckVideoName!CheckVideoName.action?commitNames=<s:property value='videoname'/>"><s:property value='videoname'/></a>
				
	    		<br/>
			
			</s:iterator> 
    	</table>
    <div>
    	
    
    </div>
    
  </body>
</html>
