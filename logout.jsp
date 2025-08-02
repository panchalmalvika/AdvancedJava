<%
	session.removeAttribute("u");
	session.invalidate();
	request.setAttribute("msg", "User Logged out Successfully");
	request.getRequestDispatcher("login.jsp").forward(request, response);
%>