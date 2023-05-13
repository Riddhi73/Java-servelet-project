<%@page import="cse.web.AdminDao"%>
<jsp:useBean id="obj" class="cse.web.AdminLoginBean" />

<jsp:setProperty property="*" name="obj" />

<% boolean status=AdminDao.validate(obj); if(status){ out.println("Your successfully logged in");
request.getRequestDispatcher("courseregister.jsp").forward(request, response);
session.setAttribute("session","TRUE"); } else { out.print("Sorry, username or password error"); %>
<jsp:include page="index.jsp"></jsp:include>

<% } %>