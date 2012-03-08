<%-- 
    Document   : logout
    Created on : Nov 3, 2011, 1:29:48 AM
    Author     : shamik
--%>

<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged Out</title>
    </head>
    <body>
        <h1><%=session.getAttribute("name")%>'s session is being terminated</h1>
        <%
            HashSet s = (HashSet)getServletContext().getAttribute("visitors");
            s.remove((String)session.getAttribute("name"));
            session.invalidate();

        %>
        <a href="index.jsp">Go to log in page

        </a>
        
    </body>
</html>
