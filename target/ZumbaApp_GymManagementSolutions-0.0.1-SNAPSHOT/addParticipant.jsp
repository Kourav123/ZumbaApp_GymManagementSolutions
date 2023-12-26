<%@page import="java.util.Iterator"%>
<%@page import="com.gym.modal.Batch"%>
<%@page import="java.util.List"%>
<%@page import="com.gym.service.BatchService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZumbaApp_GymManagementSolutions</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	background-size: 20%;
}

.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

h4 {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="radio"], input[type="number"], input[type="text"], input[type="email"],
	input[type="submit"], input[type="reset"] {
	margin-bottom: 10px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"], input[type="reset"] {
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: #0056b3;
}

a {
	display: block;
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
		<h4>Add Participant Details</h4>
		<form action="ParticipantController" method="post">
			<%
			BatchService bs = new BatchService();
			List<Batch> listOfBatches = bs.findAllBatches();
			Iterator<Batch> li = listOfBatches.iterator();
			if (li.hasNext() == false) {
			%>
			<label>No batches available to add participant</label>
			<%
			} else {
			%>
			<input type="hidden" name="operation" value="store"> <label>Id</label>
			<input type="number" name="id" /><br />
			<br /> <label>Name</label> <input type="text" name="name" /><br />
			<br /> <label>eMail</label> <input type="email" name="email" /><br />
			<br /> <label>Mobile</label> <input type="number" name="mobile" /><br />
			<br /> <label>Choose Batch Id from below list:</label><br>
			<%
			li = listOfBatches.iterator();
			while (li.hasNext()) {
				Batch bch = li.next();
			%>
			<input type="radio" name="batchid" value=<%=bch.getBatchid()%>>
			<label><%=bch.getBatchid()%>(<%=bch.getTiming()%>)</label><br>
			<%
			}
			%>
			<br />
			<br /> <input type="submit" value="Add Participant" /> <input
				type="reset" value="Reset" />
			<%
			}
			%>
		</form>
		<br />
		<br /> <a href="participant.html">Back</a>
	</div>
</body>
</html>
