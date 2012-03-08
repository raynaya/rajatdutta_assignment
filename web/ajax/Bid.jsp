
<%-- 
    Document   : Bid
    Created on : Feb 16, 2012, 1:25:44 PM
    Author     : shamik
--%>

<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bidding table</title>
        <jsp:scriptlet>
            session.setAttribute("name", request.getParameter("name"));
 GregorianCalendar c= new GregorianCalendar();
Listener.bidObject bcopy = (Listener.bidObject)session.getServletContext().getAttribute("b");
int deadline=bcopy.g.get(Calendar.HOUR_OF_DAY)+bcopy.TIMEPERIODTOBID;
       //   GregorianCalendar c = (GregorianCalendar) session.getServletContext().getAttribute("c");
//System.out.println(c.get(1));

            </jsp:scriptlet>
        
        <script   type="text/javascript">

    year="<%=c.get(Calendar.YEAR)%>"
  hour="<%=c.get(Calendar.HOUR_OF_DAY) %>"
         minute="<%=c.get(Calendar.MINUTE) %>"
        second="<%=c.get(Calendar.SECOND) %>"
         day="<%=c.get(Calendar.DAY_OF_MONTH) %>"
        month="<%=c.get(Calendar.MONTH) %>";
deadline="<%=deadline%>"
highestBid="<%=bcopy.highestBid%>";
        function a(){
    //alert(day+"/"+month+"/"+year+","+hour+":"+minute+":"+second);
    document.getElementById("second").innerHTML=
        parseInt(document.getElementById("second").innerHTML.trim())+1;
   if(parseInt(document.getElementById("second").innerHTML.trim())===60){
        document.getElementById("second").innerHTML=0;
       document.getElementById("minute").innerHTML=parseInt(document.getElementById("minute").innerHTML.trim())+1;
    
   location.reload(true);
   if(parseInt(document.getElementById("minute").innerHTML.trim())===60){
        document.getElementById("minute").innerHTML=0;
       document.getElementById("hour").innerHTML=parseInt(document.getElementById("hour").innerHTML.trim())+1;
       
      if(parseInt(document.getElementById("hour").innerHTML.trim())===24){
            location.reload(true);
        }
       }
   }
   
   t=setTimeout("a()",1000);
}
function checkBid(){
    currentBid=document.getElementById("pBid").value.trim();
  
    if(parseInt(currentBid) >parseInt(highestBid)){
        return true
    }
    else {
        return false;
        
    }
}
         </script>
    </head>
    <body onLoad="a()">
      
        <h1>Hello World!</h1>
            
       
         The Date and time is
         <%=c.get(Calendar.DAY_OF_MONTH) %>/
         <%=c.get(Calendar.MONTH) %>/
         <%=c.get(Calendar.YEAR) %>,
         <span id="hour">   <%=c.get(Calendar.HOUR_OF_DAY) %></span>:
         <span id="minute">  <%=c.get(Calendar.MINUTE) %></span>:
         <span id="second"><%=c.get(Calendar.SECOND) %> </span>(IST)
        <br>
       <%

%>
       Item is <%=bcopy.name%>
       <br>
       Bidding time: <%=bcopy.g.get(Calendar.DAY_OF_MONTH)%>/<%=bcopy.g.get(Calendar.MONTH)%>/<%=bcopy.g.get(Calendar.YEAR)%>,
       <%=bcopy.g.get(Calendar.HOUR_OF_DAY)%>:<%=bcopy.g.get(Calendar.MINUTE)%>:00 HRS 
       <br>
Will continue for:
<%=bcopy.TIMEPERIODTOBID%> Hour(s)<br>
       <% if(bcopy.g.before(c)  )
           {
          
            if(deadline>c.get(Calendar.HOUR_OF_DAY)){
            %>

Item is up for Sale !!!

<br>
Bidding will continue upto:<span id="deadline">
    <%=deadline%>:00 HRS
</span>
<div>
    Starting Bid is :<form method="post" action="../storeBid">
        <span id="currentBid"><%=bcopy.highestBid%></span>INR
        <textarea  cols="20" rows="2"  id="pBid" name="pbid"> </textarea>

        <button  onclick="return checkBid()" >Submit Bid</button>
    </form>
    </div>
<% }else {
%>
Bidding time over !!!
<% }
       }
       else {
       %>
       NO it is not up for sale yet !!
       <%
       }
%>
    </body>
</html>
