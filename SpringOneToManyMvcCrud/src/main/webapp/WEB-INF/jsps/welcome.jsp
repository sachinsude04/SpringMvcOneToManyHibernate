<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<div class="container">
  <h2>Student Table</h2>
  <p>All table data are displayed below:</p>            
  <table border="1">
		<tr>
			<th rowspan="2">STUDENT ID</th>
			<th rowspan="2">NAME</th>
			<th rowspan="2">MobileNo</th>
			<th colspan="2">Address</th>
			<th rowspan="2">ACTIONS</th>
			</tr><tr>
			<th>Address I</th>
			<th>Address II</th>
			
			
		</tr>
		<c:forEach items="${list}" var="student">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.mobile }</td>
				<c:forEach items="${student.addresses}" var="address">
					<td>${address.city}</td>
				</c:forEach>
				<td><a href="edit?id=${student.id}">Edit</a>&nbsp;
				<a href="delete?id=${student.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	

</body>
</html>