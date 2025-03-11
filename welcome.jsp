<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="stylejsp.css"  >

</head>
<body>
<%
	// Retrieve the session object
	HttpSession session1 = request.getSession(false);

	//check if the session is not null and the username attribute is set
	if(session1 !=null && session1.getAttribute("username")!=null){
		//get the username from the session
		String username=(String) session1.getAttribute("username");
%>
<div class="container">
	<h1>Welcome, <%=username %> &#127882 !!</h1>
	<p>We're delighted to have you on our platform &#128171</p>
	<p><b>Explore &#128269, learn, and connect with our vibrant community!!</b></p>
	<p>Feel free to stay as long as you like &#128522 , and when you're bored
		<br> you can <a href="Logout">Logout </a> securely.</p>
	
</div>

<%
	} else{
		//Redirect to the login page if the session is not valid
		response.sendRedirect("login.jsp");
	}
%>

</body>
</html>