<%@page import="com.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User u=null;
	if(session!=null)
	{
		if(session.getAttribute("u")!=null)
		{
			u=(User)session.getAttribute("u");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">panchals Tech</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Courses <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Java</a></li>
          <li><a href="#">C++ & C</a></li>
          <li><a href="#">MySQL</a></li>
        </ul>
      </li>
      <li><a href="#">Contact</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <%
    		if(u==null)
    		{
    %>
      <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    <%
    		}
    		else
    		{
    %>
    		 <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    	<%
    		}
    	%>
    </ul>
  </div>
</nav>
</body>
</html>