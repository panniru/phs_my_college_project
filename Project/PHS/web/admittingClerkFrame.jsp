<%-- 
    Document   : admittingClerkFrame
    Created on : Apr 4, 2012, 4:26:58 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:include page="Wellcome.jsp" flush="true"/>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <title>AdmittingClerk</title>
    </head>
    

    <frameset rows="22%,*" frameborder="1" border="1"  framespacing="3" >
    <frame src="Wellcome.jsp" scrolling="no"/>
     <frameset cols="20%,80%" frameborder="1" border="1" framespacing="0">
    <frame src="AdmittingClerk.jsp" name="left" scrolling=no />
    <frame src="" name="right" scrolling=auto/>
    </frameset>
    </frameset>
<%--<jsp:include page="homeFrameContents.jsp" flush="true"></jsp:include>
<jsp:include page="AdmittingClerk.jsp" flush="true"></jsp:include>
<jsp:include page="PersonalPage.jsp" flush="true"></jsp:include>--%>

</html>
