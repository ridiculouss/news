<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
		body
		{
			SCROLLBAR-ARROW-COLOR: #ffffff;  SCROLLBAR-BASE-COLOR: #dee3f7;
		}
    </style>
  </head>
  
<frameset rows="230,*" frameborder=0 border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/header.jsp" name="topFrame" scrolling="NO" noresize>
  <frameset cols="16%,10%,*" frameborder="0" border="0" framespacing="0">
		<frame name="" src="" >
		<frame src="${pageContext.request.contextPath}/user/left.jsp" name="leftFrame" noresize scrolling="YES">
		<frame src="${pageContext.request.contextPath}/user/createNews.jsp" name="mainFrame">
  </frameset>
</frameset>
</html>
