<%-- 
    Document   : index
    Created on : Oct 22, 2011, 7:57:49 AM
    Author     : shamik
--%>

<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if(request.getSession().getAttribute("name")==null){
         %>
        <form method="get" action="ajax/Bid.jsp" >
  <p>Name&nbsp;<input type="text"  name="name" width="200px">
  </p>
  
    <input type="submit" />
</form>
        <% }
else {
%>
<h1> you are already logged in to the system as <%=session.getAttribute("name")%> </h1>
<br><a href="/rajatdutta_assignment/girlfriendcart.jsp" >Go to girlfriend Cart</a>
        <% }%>
    </body>
</html>
