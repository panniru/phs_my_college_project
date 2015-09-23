<%-- 
    Document   : admittingClerkFrame
    Created on : Apr 4, 2012, 4:26:58 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdmittingClerk</title>
    </head>
    <frameset rows="6%,*" frameborder="0" border="1"  framespacing="3">
    <frame src="Wellcome.jsp" />
     <frameset cols="17%,*" frameborder="1" border="1" framespacing="0">
    <frame src="AdmittingClerk.jsp" scrolling=no />
    <frame src="PersonalPage.jsp" name="clerkframe" scrolling=auto/>
    </frameset>
    </frameset>
</html>
