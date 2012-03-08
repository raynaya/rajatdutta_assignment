<%-- 
    Document   : girlfriendcart
    Created on : Nov 3, 2011, 9:20:50 PM
    Author     : shamik
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of your Girl Friends</title>
    </head>
    <body>
<div style="float: right ;  font-weight: bold; letter-spacing:1px; "  ><br >If this is not you please <a href="logout.jsp">log out</a></div>
            <h1>You are here as <%=request.getSession().getAttribute("name") %> </h1>
            
              <form action="girlfriendcart.jsp" method="post">
               Girl's Name<input type="text" name="gname"/>
               <input type="submit" value="submit" />
              </form>
              <% 
                if(request.getParameter("gname")!=null)
                {
                         HashSet gflist=(HashSet)session.getAttribute("gflist");
                        gflist.add(request.getParameter("gname"));
                  }
 HashSet gflist=(HashSet)session.getAttribute("gflist");
 Iterator i=gflist.iterator();
  %>
            <br>
            List of GirlFriends : <%=gflist.toString()%>


    </body>
</html>
