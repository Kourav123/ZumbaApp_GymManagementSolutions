<%@page import="java.util.Iterator"%>
<%@page import="com.gym.modal.Batch"%>
<%@page import="java.util.List"%>
<%@page import="com.gym.service.BatchService"%>

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
	margin: 0;
	padding: 20px;
	background-color: #f4f4f4;
}

h2 {
	text-align: center;
	color: #333;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #e9e9e9;
}

a {
	display: block;
	text-align: center;
	margin-top: 20px;
	color: #007bff;
	text-decoration: none;
}

a:hover {
	color: #0056b3;
	font-weight: bold;
}
</style>
<body>
	<h2>Batch Details</h2>
	<%
	BatchService bs = new BatchService();
	List<Batch> listOfBatches = bs.findAllBatches();
	Iterator<Batch> li = listOfBatches.iterator();
	if (li.hasNext() == false) {
	%>
	<label>No batches available to display</label>
	<%
	} else {
	%>
	<table border="1">
		<tr>
			<th>BatchId</th>
			<th>Timing</th>
			<th>Instructor</th>
		</tr>
		<%
		li = listOfBatches.iterator();
		while (li.hasNext()) {
			Batch bch = li.next();
		%>
		<tr>
			<td><%=bch.getBatchid()%></td>
			<td><%=bch.getTiming()%></td>
			<td><%=bch.getInstructor()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}
	%>
	<br />
	<br />
	<a href="batch.html">Back</a>
</body>
</html>