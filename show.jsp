<%@page import="com.controller.StudentController"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
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
<table border="1" width="100%">
	<tr>
		<th>SID</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>ADDRESS</th>
		<th>GENDER</th>
		<th>EDUCATION</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		List<Student> list=StudentDao.getAllStudent();
		for(Student s:list)
		{
	%>
	<tr>
		<td><%=s.getSid() %></td>
		<td><%=s.getFname() %></td>
		<td><%=s.getLname() %></td>
		<td><%=s.getEmail() %></td>
		<td><%=s.getMobile() %></td>
		<td><%=s.getAddress() %></td>
		<td><%=s.getGender() %></td>
		<td><%=s.getEducation() %></td>
		<td>
			<form name="edit" method="post" action="StudentController">
				<input type="hidden" name="sid" value="<%=s.getSid()%>">
				<input type="submit" name="action" value="EDIT" class="btn btn-primary">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="StudentController">
				<input type="hidden" name="sid" value="<%=s.getSid()%>">
				<input type="submit" name="action" value="DELETE" class="btn btn-danger">
			</form>
		</td>										
	</tr>
	<%
		}
	%>
</table>
<a href="insert.jsp"Add New Student></a>
</body>
</html>