<%-- 
    Document   : TestPrescribed
    Created on : Apr 1, 2012, 2:00:59 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Prescribed</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%
            int patientId=(Integer)session.getAttribute("patientId");
            int doctorId=(Integer)session.getAttribute("UID");
            String testName=request.getParameter("testName");
        %>
        <%--;out.println("patientId:"+patientId);--%>
        <jsp:useBean id="writeTest" class="PHS.Test" scope="request">
        <jsp:setProperty name="writeTest" property="patientId" value="<%=patientId%>"/>
        <jsp:setProperty name="writeTest" property="doctorId" value="<%=doctorId%>"/>
        <jsp:setProperty name="writeTest" property="testName" value="<%=testName%>"/>
        <%
            int rowsUpdated=writeTest.updatePatientrecord();
           
        %>
        <form action="PrescribeTest.jsp" method="post">
            <table align="center">
                <tr>
                    <td><%
                            if(rowsUpdated==1)
                            out.println("Test Succesfully added to Patient:"+patientId);
                            else
                                out.println("Test Adding Failed...!!");%></td>
                </tr>
                <tr>
                    <td><input type="submit" value="ok" name="ok" class="phs_Button"/></td>
                </tr>
            </table>
        </form>
        
        </jsp:useBean>
    </body>
</html>
++