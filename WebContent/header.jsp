<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<title>瑞商网</title>
<script type="text/javascript" src="js/settab.js"></script>
<script type="text/javascript">
	function skip() {
		var k = document.getElementById("keyw").value;
		window.open('index_findNewsByKeyword.action?page=1&keyword='+k);
	}
	</script>
</head>

<body>
<!--top begin-->
<div class="top">
 <div class="wrap">
  <span class="fl">欢迎您来到<a href="${pageContext.request.contextPath}/index.action" title="" target="_blank">新闻管理网</a></span>
  <s:if test="#session.existUser == null">
  <span class="fr"><a href="${pageContext.request.contextPath}/login.jsp" title="" target="_parent">请登录</a>
  &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/regist.jsp" title="" target="_blank">立即注册</a></span>
  </s:if>
  <s:else>
  <span class="fr"><a href="${pageContext.request.contextPath}/user_center.action" title="" target="_blank"><s:property value="#session.existUser.uname" /></a>
  &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/user_exit.action" title="" target="_parent">退出</a></span>
  </s:else>
 	
 </div>
</div>
<!--top end-->
<!--header begin-->
<div class="header">
 <div class="wrap">
  <div class="search_box">
   <a href="${pageContext.request.contextPath}/index.action" title="" target="_blank"><img src="images/img66552255.jpg" width="375" height="91"  alt="" class="fl"/></a>
   <div class="search">
     <div class="lain1_box" id="lain1">
		<!-- <form action="index_findNewsByKeyword.action?page=1" method="post"> -->
       <ul class="block">
        <li><input id="keyw" type="text"  placeholder="请输入新闻标题名称" class="sertxt" name="keyword"/><input type="submit" value="搜 索" onclick="skip()" class="serbtn"/></li>
       </ul>
       <!-- </form> -->
     </div>
   </div>
   <div class="cb"></div>
  </div>
 </div>
 <div class="nav">
  <div class="wrap">
   <ul class="nav_left">
    <li><a href="${pageContext.request.contextPath}/index.action" title="" target="_blank">首 页</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=国际新闻" title="" target="_blank">国际新闻</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=国内新闻" title="" target="_blank">国内新闻</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=体育新闻" title="" target="_blank">体育新闻</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=财经频道" title="" target="_blank">财经频道</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=娱乐新闻" title="" target="_blank">娱乐新闻</a></li>
    <li><a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=科技频道" title="" target="_blank">科技频道</a></li>
   </ul>
  </div>
 </div>
</div>
<!--header end-->

</body>
</html>
