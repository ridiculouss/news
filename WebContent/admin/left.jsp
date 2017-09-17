<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
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
		d.add('0103','01','审核新闻','','','mainFrame');
		d.add('010301','0103','已通过','${pageContext.request.contextPath}/adminNews_findByCheck.action?page=1&check=1','','mainFrame');
		d.add('010302','0103','未通过','${pageContext.request.contextPath}/adminNews_findByCheck.action?page=1&check=0','','mainFrame');
		d.add('0104','01','查询新闻','','','mainFrame');
		d.add('010401','0104','查询新闻','${pageContext.request.contextPath}/adminNews_findAll.action?page=1','','mainFrame');
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
