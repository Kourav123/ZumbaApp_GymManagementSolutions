<%@page import="java.util.Iterator"%>
<%@page import="com.gym.modal.Participant"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gym Management Solution</title>
</head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

h2 {
	text-align: center;
	margin-top: 20px;
}

label {
	display: block;
	margin-bottom: 10px;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
	text-align: left;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f2f2f2;
}

a {
	display: block;
	margin-top: 20px;
	text-align: center;
	color: #007bff;
	text-decoration: none;
}

a:hover {
	color: #0056b3;
	font-weight: bold;
}
</style>
<body>
	<h2>Participant Details</h2>
	<%
	Object obj = session.getAttribute("obj");
	List<Participant> listOfParticipants = (List<Participant>) obj;
	Iterator<Participant> li = listOfParticipants.iterator();
	if (li.hasNext() == false) {
	%>
	<label>No participants available to display</label>
	<%
	} else {
	%>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>BatchId</th>
		</tr>
		<%
		li = listOfParticipants.iterator();
		while (li.hasNext()) {
			Participant ppt = li.next();
		%>
		<tr>
			<td><%=ppt.getId()%></td>
			<td><%=ppt.getName()%></td>
			<td><%=ppt.getEmail()%></td>
			<td><%=ppt.getMobile()%></td>
			<td><%=ppt.getBatchid()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}
	%>
	<br />
	<br>
	<a href="participant.html">Back</a>
</body>
</html>