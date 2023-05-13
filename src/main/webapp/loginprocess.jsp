<%@page import="cse.web.LoginDao" %>
<jsp:useBean id="obj" class="cse.web.LoginBean" />

<jsp:setProperty property="*" name="obj" />

<% boolean status=LoginDao.validate(obj); if(status){ out.println("Your successfully logged in");
request.getRequestDispatcher("courseregister.jsp").forward(request, response);
session.setAttribute("session","TRUE"); } else { out.print("Sorry, username or password error"); %>
<jsp:include page="index.jsp"></jsp:include>

<% } %>