<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body  style="background-color: #FFF">
<table width="100" border="0" cellspacing="0" cellpadding="0">

</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
		<!--
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		d.add('0102','01','创建新闻');
		d.add('010201','0102','创建新闻','${pageContext.request.contextPath}/user/createNews.jsp','','mainFrame');
		d.add('0104','01','查询新闻','','','mainFrame');
		d.add('010401','0104','查询新闻','${pageContext.request.contextPath}/userNews_findByUid.action?page=1','','mainFrame');
		d.add('0105','01','发布新闻','','','mainFrame');
		d.add('010501','0105','已发布','${pageContext.request.contextPath}/userNews_findByIssue.action?page=1&issue=1','','mainFrame');
		d.add('010502','0105','未发布','${pageContext.request.contextPath}/userNews_findByIssue.action?page=1&issue=0','','mainFrame');
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
