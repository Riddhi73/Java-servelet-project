<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <nav class="navbar navbar-light bg-light">
  <span class="navbar-brand mb-0 h1">Admin LogIn</span>
</nav>
<title>Admin Login</title>
<br>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<br>
<body>
<form align="center" action="adminloginprocess.jsp" method="post">
    Username:<input style="font-weight: bold;" type="text" name="username" /><br /><br />
    Password:<input style="font-weight: bold;" type="password" name="password" /><br /><br />
    <input type="submit" value="Login" />
</form>
</body>
</html>