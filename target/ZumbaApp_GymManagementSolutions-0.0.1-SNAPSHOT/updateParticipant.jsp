<%@page import="java.util.Iterator"%>
<%@page import="com.gym.modal.Batch"%>
<%@page import="java.util.List"%>
<%@page import="com.gym.service.BatchService"%>
<%@page import="com.gym.modal.Participant"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gym Management Solution</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

.container {
	width: 50%;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

h4 {
	text-align: center;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="number"], input[type="submit"], input[type="reset"] {
	width: 100%;
	margin-bottom: 10px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

input[type="reset"] {
	background-color: #dc3545;
	color: #fff;
	cursor: pointer;
}

input[type="reset"]:hover {
	background-color: #bd2130;
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
</head>
<body>
	<div class="container">
		<h4>Update Participant BatchId</h4>
		<form action="ParticipantController" method="post">
			<%
			BatchService bs = new BatchService();
			List<Batch> listOfBatches = bs.findAllBatches();
			Iterator<Batch> li = listOfBatches.iterator();
			if (li.hasNext() == false) {
			%>
			<label>No batches available to update participant</label>
			<%
			} else {
			Object obj = session.getAttribute("obj");
			List<Participant> listOfParticipants = (List<Participant>) obj;
			Iterator<Participant> lil = listOfParticipants.iterator();
			if (lil.hasNext() == false) {
			%>
			<label>No participants available to update</label>
			<%
			} else {
			%>
			<input type="hidden" name="operation" value="update"> <label>Id</label>
			<input type="number" name="id"> <br>
			<br> <label>Choose New Batch Id from below list:</label><br>
			<%
			li = listOfBatches.iterator();
			while (li.hasNext()) {
				Batch bch = li.next();
			%>
			<input type="radio" name="batchid" value=<%=bch.getBatchid()%>>
			<label><%=bch.getBatchid()%>(<%=bch.getTiming()%>)</label> <br>
			<%
			}
			%>
			<br>
			<br> <input type="submit" value="Update Participant BatchId">
			<input type="reset" value="Reset">
			<%
			}
			}
			%>
		</form>
		<br>
		<br> <a href="participant.html">Back</a>
	</div>
</body>
</html>
