<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>User Register</title>
        <img src="https://static.prod01.ue1.p.pcomm.net/blackbaud/user_content/photos/000/006/6783/a6132a5cd55abcae190bc82567ca8a47-original-users.png" class="img-fluid" alt="Responsive image">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <div align="center">
            <h1>User Register Form</h1>
            <form action="<%= request.getContextPath() %>/register" method="post">
                <table style="width: 80%">
                    <tr>
                        <td>Type</td>
                        <td>
                            <input type="radio" id="admin" name="type" value="admin">
                            <label for="admin">Admin</label><br>
                            <input type="radio" id="teacher" name="type" value="teacher">
                            <label for="teacher">Teacher</label><br>
                            <input type="radio" id="student" name="type" value="student">
                            <label for="student">Student</label>
                        </td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstName" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" /></td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" /></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td><input type="text" name="contact" /></td>
                    </tr>
                </table>
                <br>
                <input type="submit" value="Submit" />
            </form>
        </div>
    </body>

    </html>