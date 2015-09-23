<%-- 
    Document   : logout
    Created on : Mar 28, 2012, 8:49:42 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   <%--"http://www.w3.org/TR/html4/loose.dtd">errorPage="errorpage.jsp"--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%--Is SESSION NEW:<%=session.isNew()%><br>--%>
        <%--Session Id:<%= session.getId()%><br>--%>
        <%--Creation Time:<%=session.getCreationTime()%><br>--%>
        <%
        session.invalidate();
            
        %>
            
         <jsp:forward page="login.jsp"></jsp:forward>

    </body>
</html>
