<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
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
   	<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
	 /*  function GetQueryString(name){
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	  }
		
		
		
		window.onload=function(){
    		var video = document.getElementById("video");
			var src = GetQueryString("name");
			alert(src);
			video.src="f:\workspace\HomeWork\WebRoot\videos\testqqw.mp4";
			alert(video.src);
    } */
    
  </script>
  
  <%
  	
  	//String name = request.getParameter("name").getBytes("ISO-8859-1");
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String srcname = "videos/"+name;
	out.print(srcname);
   %>
   
  <body>
  
  	<div>
    	<form action="VideosName!VideosName.action">
    	<input type="text" name="filesname">
    	<input type="submit">
    	</form>
    </div>
    	<table>
	    		<tr>
	    			<td><%=srcname %><video width="500" height="250" controls="controls">
	    				<source id="video" src="<%=srcname %>" type="video/mp4"></source>
	    			</video></td>
	    			
	    			
	    		</tr>
    	</table>
    	<s:debug/>
    <div>
    	
    
    </div>
    
  </body>
</html>
