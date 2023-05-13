<%@ include file="index.jsp" %>
<hr />

 <nav class="navbar navbar-light bg-light">
  <span class="navbar-brand mb-0 h1">LogIn</span>
</nav>
<br>
<h3>Login Form</h3>
<% String profile_msg=(String)request.getAttribute("profile_msg"); if(profile_msg!=null){ out.print(profile_msg); }
String login_msg=(String)request.getAttribute("login_msg"); if(login_msg!=null){ out.print(login_msg); } %>
<br />
<form align="center" action="loginprocess.jsp" method="post">
    Username:<input style="font-weight: bold;" type="text" name="username" /><br /><br />
    Password:<input style="font-weight: bold;" type="password" name="password" /><br /><br />
    <input type="submit" value="Login" />
</form>