

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <%
        if(!session.isNew())
            {
            
    %>
    <frameset rows="22%,*" frameborder="1" border="1"  framespacing="3">
<frame src="Wellcome.jsp" scrolling="no"/>
        <frameset cols="20%,80%" frameborder="1" border="1">
            <frame src="DoctorFrameContents.jsp"/>
        <frame src="" name="doctorframe" />
        </frameset>
        </frameset>
<%--   <jsp:forward page="PendingPatient.jsp"/>
        <NOFRAMES>
            <p><font color="#C7451D">Sorry. . This Interface is no longer available.</font></p>
        </NOFRAMES>
    </frameset>--%>
    <% }  
        else{ 
           %>

            <jsp:forward page="login.jsp"></jsp:forward>
         <%}
   %>
</html>
