<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/settab.js"></script>

</head>
<body>
<div class="container register" style="margin-left: 50px;">		
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 50px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="5%">
										序号
									</td>
									<td align="center" width="15%">
										标题
									</td>
									<td align="center" width="10%">
										所属栏目
									</td>
									<td width="15%" align="center">
										创建时间
									</td>
									<td align="center" width="15%">
										来源
									</td>
									<td align="center" width="10%">
										作者
									</td>
									<td width="7%" align="center">
										操作
									</td>
									<td width="7%" align="center">
										操作
									</td>
								</tr>
								<s:iterator var="news" value="pageBean.list" status="status">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="5%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="15%">
												<s:property value="#news.title"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="10%">
												<s:property value="#news.coulumn"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="15%">
												<s:property value="#news.date"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="15%">
												<s:property value="#news.source"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="10%">
												<s:property value="#news.author"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="7%">
												<a href="${pageContext.request.contextPath }/userNews_showNews.action?nid=<s:property value="#news.nid"/>">预览</a>
											</td>
											<td style="CURSOR: hand; HEIGHT: 45px" align="center"
												width="7%">
												<a href="${pageContext.request.contextPath }/userNews_changeIssueStatus.action?nid=<s:property value="#news.nid"/>">发布</a>
											</td>
										</tr>
									</s:iterator>	
							</table>
						</td>
					</tr>
					<tr align="center" style=" HEIGHT: 30px; font-size: 14px; ">
						<td class="ta_01" align="center" bgColor="#afd1f3">
							第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;&nbsp;&nbsp;
							<s:if test="pageBean.page != 1">
							<a href="${pageContext.request.contextPath }/userNews_findByIssue.action?page=1&issue=0">首页</a>|
							<a href="${pageContext.request.contextPath }/userNews_findByIssue.action?page=<s:property value="pageBean.page-1"/>&issue=0">上一页</a>|
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
							<a href="${pageContext.request.contextPath }/userNews_findByIssue.action?page=<s:property value="pageBean.page+1"/>&issue=0">下一页</a>|
							<a href="${pageContext.request.contextPath }/userNews_findByIssue.action?page=<s:property value="pageBean.totalPage"/>&issue=0">尾页</a>|
							</s:if>
						</td>
					</tr>
				</TBODY>
			</table>
		</div>
</body>
</html>