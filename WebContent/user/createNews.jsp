<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/settab.js"></script>
</head>
<body>
<div class="container register" style="margin-left: 30px;">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>创建新闻</strong>Create News
					</div>
					<form id="registerForm" action="${pageContext.request.contextPath}/userNews_create.action" enctype="multipart/form-data" method="post" novalidate="novalidate" >
						<table>
							<tbody><tr>
								<th>
									<span class="requiredField">*</span>标&nbsp;&nbsp;题:
								</th>
								<td width="300px">
									<input type="text" id="text" name="title" class="text" onblur="checkText()" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>栏&nbsp;&nbsp;目:
								</th>
								<td width="300px">
									<select name="coulumn">
											<option value="国际新闻">国际新闻</option>
											<option value="国内新闻">国内新闻</option>
											<option value="娱乐新闻">娱乐新闻</option>
											<option value="科技频道">科技频道</option>
											<option value="财经频道">财经频道</option>
											<option value="体育新闻">体育新闻</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>来&nbsp;&nbsp;源:
								</th>
								<td width="300px">
									<input type="text" id="text" name="source" class="text" maxlength="200" onblur="checkText()" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>作&nbsp;&nbsp;者:
								</th>
								<td width="300px">
									<input type="text" id="text" name="author" class="text" maxlength="200" onblur="checkText()" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>内&nbsp;&nbsp;容:
								</th>
								<td>
									<div class="agreement" style="height: 200px;">
										<textarea rows="80" cols="80" name="content"></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>图&nbsp;&nbsp;片:
								</th>
								<td width="300px">
									<input type="file" name="upload" />
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="提交">
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>