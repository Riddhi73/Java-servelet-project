<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Welcome</title>
	<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Welcome to Course Management</span>
   </nav>
   <img src="https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books_23-2149342941.jpg?w=2000" class="img-fluid" alt="Responsive image">
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<script>
		function user_register() {
			window.open("userregister.jsp", "_self");
		}
		function course_register() {
			window.open("courseregister.jsp", "_self");
		}
	</script>
</head>

<body>
	<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
        url = "jdbc:mysql://localhost:3306/web_app?useSSL=false"
        user = "root"  password = "root"/>

    <sql:query dataSource = "${snapshot}" var = "result">
        SELECT * FROM web_app.course JOIN web_app.user ON web_app.course.teacher_id = web_app.user.id
    </sql:query>

	<div align="center" style="margin-top: 50px;">
		<a href="adminlogin.jsp">Admin</a>
	</div>
	<br>
	<div align="center">
		<a href="login.jsp" >Login</a>
		
	</div>
	<br>
	<div align="center">
		<button  onclick="user_register()">User Register</button>
	</div>
	<br>
	<div align="center" >
		<button onclick="course_register()">Course Register</button>
	</div>
	<br>
	<div align="center">
		<table  class="table table-responsive table-bordered" cellpadding ="0" style="width: 100%">
			<tr>
				<th>Teacher ID</th>
				<th>Course Name</th>
				<th>Course Teacher</th>
			</tr>
			<c:forEach var = "row" items = "${result.rows}">
				<tr>
					<td>${row.id}</td>
					<td>${row.course_name}</td>
					<td>${row.first_name} ${row.last_name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>