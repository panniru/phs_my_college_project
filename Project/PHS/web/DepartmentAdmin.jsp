<%-- 
    Document   : DepartmentAdmin
    Created on : Mar 14, 2012, 8:35:40 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dept Admin</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <%
        if(session.isNew()==true)
            {
                response.sendRedirect("errorPage.jsp");
            }
        %>
    </head>
        <frameset rows="22%,*" frameborder="1" border="1"  framespacing="3">
        <frame src="Wellcome.jsp" scrolling="no"/>
        <frameset cols="20%,88%" frameborder="1" border="1">
        <frame src="DeptAdminframecontents.jsp" />
        <frame src="" name="deptadminframe" />
        </frameset>
        </frameset>
        <%--<jsp:forward page="PendingPatient.jsp" />--%>
    <body>
      
    </body>
</html>
