<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>管理员登录</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/settab.js"></script>

<script type="text/javascript">
	function $(id) {
		return document.getElementById(id);
	}
	function checkPassword() {
		var password = $("password").value;
		if (password == null || password == "") {
			$("passwordInfo").innerHTML = "密码不能为空!";
		}else {
			$("passwordInfo").innerHTML = "";
		}
		return false;
	}		
	function checkUserName() {
		var username = $("username").value;
		if(username == null || username == ""){
			$("usernameInfo").innerHTML = "用户名不能为空!";
		}else {
			$("usernameInfo").innerHTML = "";
		}
		return false;
	}
</script>

</head>
<body>
<iframe style="width:100%;height:236px" scrolling="no" frameborder="0" src="../header.jsp"></iframe>
<div class="container login">
		<div class="span12">
		</div>
		<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>管理员登录</strong>ADMIN LOGIN 
					</div>
					<form id="loginForm" action="admin_login.action" method="post" novalidate="novalidate">
						<table>
							<tbody><tr>
								<th>
										用户名:
								</th>
								<td width="240px">
									<input type="text" id="username" name="name" class="text" maxlength="20" onblur="checkUserName()" />
								</td>
								<td><span id="usernameInfo" style="color: red"></span></td>
							</tr>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td width="240px">
									<input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off" onblur="checkPassword()" />
								</td>
								<td>
									<span id="passwordInfo" style="color: red"></span>
									<span><font color="red"><s:actionerror/></font></span>
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<label>
										<input type="checkbox" id="isRememberUsername" name="isRememberUsername" value="true" />记住用户名
									</label>
									<label>
										&nbsp;&nbsp;<a >找回密码</a>
									</label>
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录" />
								</td>
							</tr>
						</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body></html>