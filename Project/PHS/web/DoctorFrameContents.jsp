<%-- 
    Document   : DoctorFrameContents
    Created on : Apr 3, 2012, 10:19:05 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <% String role=session.getAttribute("Role").toString();
       int uid=Integer.parseInt(session.getAttribute("UID").toString());
    %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DoctorFrameContents</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <jsp:useBean id="totalNum" class="PHS.PendingPatient" scope="page">
        <jsp:setProperty name="totalNum" property="role" value="<%=role%>"/>
        <jsp:setProperty name="totalNum" property="doctorId" value="<%=uid%>"/>
        <% totalNum.setTotalNum();%>

<table>
<tr>
    <td><a href ="PendingPatient.jsp" target="doctorframe">Pending Patients( <jsp:getProperty name="totalNum" property="totalNum"></jsp:getProperty></jsp:useBean> )</a></td>
</tr>

<!--<tr>
    <td><a href ="PatientToPrescribe.jsp" target="doctorframe">Prescribe Test</a></td>

</tr>

<tr>
    <td><a href ="medicinesPrescribed.jsp" target="doctorframe">Prescribe Medicine</a></td>
</tr>


<tr>
<td><a href ="WriteComment.jsp" target="doctorframe">Write comment And NextVisit</a></td>
</tr>-->
<tr>
<td><a href="TestReport.jsp" target="doctorframe">View TestReport</a></td>
</tr>
<tr>
    <td><a href ="medicinesPrescribed.jsp" target="doctorframe">View Medicines Issued</a></td>
</tr>

</table>
    </body>
</html>
