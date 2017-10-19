<%@ page language="java" import="java.util.*"   pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");
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
  <script type="text/javascript" charset="utf-8">
	  /* function GetQueryString(name){
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	  }
		
		
		
		window.onload=function(){
    		var video = document.getElementById("video");
			var src = GetQueryString("name");
			alert(src);
			//video.src="f:\workspace\HomeWork\WebRoot\videos\testqqw.mp4";
			alert(video.src);
    }  */
    
  </script>
  
  <%
  	
  	//String name = request.getParameter("name");
	/* String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String srcname = "videos/"+name; */
	//out.print(srcname);
   %>
   
  <body>
  
  
  	<div>
    	<form action="VideosName!VideosName.action" method="post">
    	<input type="text" name="filesname" required="required" placeholder="文件所在位置">
    	<input type="submit">
    	</form>
    </div>
    	<table>
	    		<tr>
	    			<td><video width="500" height="250" controls="controls">
	    				<source id="video" src="videos/${commitName}" type="video/mp4"></source>
	    			</video></td>
	    			
	    			
	    		</tr>
    	</table>
    	<s:debug/>
    <div>
    	
    
    </div>
    
  </body>
</html>
