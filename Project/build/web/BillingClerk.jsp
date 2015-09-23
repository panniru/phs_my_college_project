<%-- 
    Document   : BillingClerk
    Created on : Apr 5, 2012, 6:06:36 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <frameset rows="22%,*" frameborder="1" border="1"  framespacing="3">
        <frame src="Wellcome.jsp" scrolling="no"/>
        <frameset cols="20%,88%" frameborder="1" border="1">
        <frame src="BillingClerkframecontents.jsp" />
        <frame src="" name="billingclerkframe" />
        </frameset>
        </frameset>
    <%--<jsp:forward page="GetPName.jsp"/>--%>
</html>
