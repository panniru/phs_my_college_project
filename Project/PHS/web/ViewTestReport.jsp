<%-- 
    Document   : GetTestReport
    Created on : Mar 29, 2012, 7:09:13 PM
    Author     : Rajendar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewTestReport</title>
       <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form action="" target="doctorframe"></form>
        <jsp:useBean id="patientTestReport" class="PHS.TestReport" scope="page">
        <%
            int patientId=Integer.parseInt(request.getParameter("patientId").toString());
        %>
        <%
        patientTestReport.getTestReport(patientId);
        ArrayList testIdList=new ArrayList();
        testIdList=patientTestReport.getTestIdList();
        ArrayList testNameList=new ArrayList();
        testNameList=patientTestReport.getTestNameList();
        ArrayList dateList=new ArrayList();
        dateList=patientTestReport.getDateList();
        Iterator testIdIter=testIdList.iterator();
        Iterator testNameIter=testNameList.iterator();
        Iterator dateIter=dateList.iterator();%>

        
        <table align="center" border="1" width="500" id="phs_table">
            <%while(testIdIter.hasNext())
            { 
        %>
                <tr>
                    <td>
                         <%int testId=(Integer)testIdIter.next();
                           String testName=(String)testNameIter.next();
                           String date=(String)dateIter.next();
                           %>
                     
                        <a href="WriteTestReport.jsp?patientId=<%= patientId%>&testId=<%= testId%>&testName=<%= testName%>" >
                        <%= testId%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= testName%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= date%>

                       </a>
                    </td>

                </tr>
           
             <% }
                   %>


          </table>
        </jsp:useBean>
    </body>
</html>
