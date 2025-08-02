<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login </title>
<style type="text/css">
	tr,td{
		padding: 10px;
	}
</style>
</head>
<body>
<%
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
<form name="singup" method="post" action="UserController">
	<table>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" onblur="checkEmail();"></td>
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" onblur="checkPassword();"></td>
			<td><span id="password"></span></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="login" class="btn btn-primary">
			</td>
		</tr>
	</table>
</form>
<a href="singup.jsp">Yet Not Sing Up?</a>
</body>
</html>
