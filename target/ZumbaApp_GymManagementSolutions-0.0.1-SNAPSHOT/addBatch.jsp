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
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f4f4f4
}

.container {
	width: 80%;
	margin: auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, .1)
}

form {
	margin-bottom: 20px
}

form label {
	display: inline-block;
	width: 100px
}

form input[type="number"], form input[type="text"], form input[type="submit"],
	form input[type="reset"] {
	width: calc(100% - 120px);
	margin-bottom: 10px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc
}

form input[type="submit"], form input[type="reset"] {
	background-color: #007bff;
	color: #fff;
	cursor: pointer
}

form input[type="submit"]:hover, form input[type="reset"]:hover {
	background-color: #0056b3
}

.container a {
	text-decoration: none;
	color: #007bff
}

.container a:hover {
	color: #0056b3;
	font-weight: bold
}
</style>
</head>
<body>
	<div class="container">
		<h4>Add Batch Details</h4>
		<form action="BatchController" method="post">
			<input type="hidden" name="operation" value="store"> <label>BatchId</label><input
				type="number" name="batchid" /> <br /> <br /> <label>Timing</label>
			<input type="text" name="timing" /> <br /> <br /> <label>Instructor</label>
			<input type="text" name="instructor" /><br /> <br /> <input
				type="submit" value="add batch" /> <input type="reset"
				value="reset" />
		</form>
		<br /> <br /> <a href="batch.html">Back</a>
	</div>
</body>
</html>

