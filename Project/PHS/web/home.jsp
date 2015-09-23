<%-- 
    Document   : index
    Created on : Mar 14, 2012, 10:14:47 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="login.jsp" %>--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PHS HOME</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <%--<link href="PHScss.css" rel="stylesheet" type="text/css" />--%>
    </head>
    

    <frameset rows="20%,*" frameborder="1" border="0" framespacing="0">

        <%--<frame src="homeFrameContents.jsp" scrolling=no />--%>
        <frame src="aboutUs.html" name="homeframe" scrolling="no" />
        <frameset cols="70%,*" frameborder="1" border="0" framespacing="0">
            <frame src="aboutUs.html" name="homeframe" scrolling="no" />
            <frame src="login.jsp" name="homeframe" scrolling="no" target=""/>

    </frameset>
    </frameset>

</html>
